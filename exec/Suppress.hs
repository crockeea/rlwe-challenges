{-# LANGUAGE FlexibleContexts #-}

module Suppress (suppressMain) where

import Control.Monad.Except
import Control.Monad.State

import Beacon
import Common
import Crypto.Challenges.RLWE.Proto.RLWE.Challenge

import Data.ByteString.Lazy (writeFile)

import Data.Map             (Map, empty, insert, lookup)

import Net.Beacon
import Network.HTTP.Conduit (simpleHttp)

import Prelude hiding (lookup, writeFile)

import System.Directory (removeFile)

-- | Deletes the secret indicated by NIST beacon for each challenge in
-- the tree, given the path to the root of the tree.
suppressMain :: (MonadIO m, MonadError String m) => FilePath -> m ()
suppressMain path = do
  -- get list of challenges
  challs <- challengeList path

  -- suppress a secret from each challenge, collecting beacon records as we go
  recs <- flip execStateT empty $ mapM_ (suppressChallenge path) challs

  -- write all beacon records
  mapM_ (writeBeaconXML path) recs

  -- write the NIST certificate
  getNistCert path

-- | A map from beacon times to beacon records.
type RecordState = Map BeaconEpoch Record

-- | Lookup the secret index based on the randomness for this challenge,
-- then remove the corresponding secret.
suppressChallenge :: (MonadIO m, MonadError String m, MonadState RecordState m)
                     => FilePath -> String -> m ()
suppressChallenge path name =
  printPassFail ("Deleting secret for challenge " ++ name ++ ":\n") "DONE" $ do
    -- read the beacon address of the randomness for this challenge
    let challFN = challFilePath path name
    challProto <- readProtoType challFN
    (BA time offset) <- parseBeaconAddr challProto
    let numInsts = fromIntegral $ numInstances challProto

    -- get the record, and compute the secret index
    rec <- retrieveRecord time
    let secID = suppressedSecretID numInsts rec offset
        secFile = secretFilePath path name secID

    -- delete the secret corresponding to the secret index
    checkFileExists secFile
    liftIO $ putStr $ "\tRemoving " ++ secFile ++ "\n\t"
    liftIO $ removeFile secFile

-- | Attempt to find the record in the state, otherwise download it from NIST.
retrieveRecord :: (MonadIO m, MonadError String m, MonadState RecordState m)
                  => BeaconEpoch -> m Record
retrieveRecord t = do
  mrec <- gets (lookup t)
  case mrec of
    (Just r) -> return r
    Nothing -> do
      liftIO $ putStrLn $ "\tDownloading record " ++ show t
      -- make sure the beacon is available
      isAvail <- isBeaconAvailable t
      throwErrorIfNot isAvail $
        "Can't suppress challenge: the beacon at time " ++ show t ++
        " is not yet available."
      trec <- liftIO $ getCurrentRecord $ fromIntegral t
      rec <- maybeThrowError trec $ "Couldn't get record " ++ show t ++
          " from NIST beacon."
      modify (insert t rec)
      return rec

-- | Writes a beacon record to a file.
writeBeaconXML :: (MonadIO m) => FilePath -> Record -> m ()
writeBeaconXML path rec = do
  let beacon = toXML rec
      filePath = xmlFilePath path $ fromIntegral $ timeStamp rec
  liftIO $ writeFile filePath beacon

-- | Downloads the NIST certificate and saves it.
getNistCert :: (MonadIO m) => FilePath -> m ()
getNistCert path = liftIO $ do
  let certPath = certFilePath path
  putStrLn $ "Writing NIST certificate to " ++ certPath
  bs <- simpleHttp "https://beacon.nist.gov/certificate/beacon.cer"
  writeFile certPath bs
