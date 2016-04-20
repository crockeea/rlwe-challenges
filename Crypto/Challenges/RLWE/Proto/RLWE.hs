{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module Crypto.Challenges.RLWE.Proto.RLWE (protoInfo, fileDescriptorProto) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import Text.DescriptorProtos.FileDescriptorProto (FileDescriptorProto)
import Text.ProtocolBuffers.Reflections (ProtoInfo)
import qualified Text.ProtocolBuffers.WireMessage as P' (wireGet,getFromBS)

protoInfo :: ProtoInfo
protoInfo
 = Prelude'.read
    "ProtoInfo {protoMod = ProtoName {protobufName = FIName \".RLWE\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [], baseName = MName \"RLWE\"}, protoFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE.hs\"], protoSource = \"RLWE.proto\", extensionKeys = fromList [], messages = [DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.SampleCont\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleCont\"}, descFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"SampleCont.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleCont.a\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleCont\"], baseName' = FName \"a\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Lol.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"Lol\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleCont.b\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleCont\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Lol.Kq\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"Lol\"], baseName = MName \"Kq\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.SampleDisc\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleDisc\"}, descFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"SampleDisc.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleDisc.a\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleDisc\"], baseName' = FName \"a\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Lol.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"Lol\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleDisc.b\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleDisc\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Lol.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"Lol\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.SampleRLWR\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleRLWR\"}, descFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"SampleRLWR.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleRLWR.a\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleRLWR\"], baseName' = FName \"a\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Lol.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"Lol\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.SampleRLWR.b\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"SampleRLWR\"], baseName' = FName \"b\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Lol.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"Lol\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.InstanceCont\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"InstanceCont\"}, descFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"InstanceCont.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceCont.id\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceCont\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceCont.m\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceCont\"], baseName' = FName \"m\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceCont.q\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceCont\"], baseName' = FName \"q\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceCont.svar\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceCont\"], baseName' = FName \"svar\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 33}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 1}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceCont.bound\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceCont\"], baseName' = FName \"bound\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 41}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 1}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceCont.samples\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceCont\"], baseName' = FName \"samples\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.SampleCont\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleCont\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.InstanceDisc\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"InstanceDisc\"}, descFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"InstanceDisc.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceDisc.id\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceDisc\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceDisc.m\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceDisc\"], baseName' = FName \"m\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceDisc.q\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceDisc\"], baseName' = FName \"q\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceDisc.svar\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceDisc\"], baseName' = FName \"svar\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 33}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 1}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceDisc.bound\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceDisc\"], baseName' = FName \"bound\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceDisc.samples\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceDisc\"], baseName' = FName \"samples\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.SampleDisc\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleDisc\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.InstanceRLWR\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"InstanceRLWR\"}, descFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"InstanceRLWR.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceRLWR.id\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceRLWR\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceRLWR.m\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceRLWR\"], baseName' = FName \"m\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceRLWR.q\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceRLWR\"], baseName' = FName \"q\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceRLWR.p\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceRLWR\"], baseName' = FName \"p\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.InstanceRLWR.samples\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"InstanceRLWR\"], baseName' = FName \"samples\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.SampleRLWR\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"SampleRLWR\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.Secret\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Secret\"}, descFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"Secret.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Secret.id\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Secret\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Secret.m\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Secret\"], baseName' = FName \"m\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Secret.q\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Secret\"], baseName' = FName \"q\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Secret.s\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Secret\"], baseName' = FName \"s\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = True, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".Lol.Rq\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"Lol\"], baseName = MName \"Rq\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False},DescriptorInfo {descName = ProtoName {protobufName = FIName \".RLWE.Instance\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"Instance\"}, descFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"Instance.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".RLWE.Instance.instType\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\",MName \"Instance\"], baseName = MName \"InstType\"}, oneofFName = ProtoFName {protobufName' = FIName \".RLWE.Instance.instType\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Instance\"], baseName' = FName \"instType\", baseNamePrefix' = \"\"}, oneofFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"Instance\",\"InstType.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".RLWE.Instance.instType.instCont\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName = MName \"InstCont\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Instance.instType.instCont\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName' = FName \"instCont\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.InstanceCont\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"InstanceCont\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".RLWE.Instance.instType.instDisc\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName = MName \"InstDisc\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Instance.instType.instDisc\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName' = FName \"instDisc\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.InstanceDisc\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"InstanceDisc\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".RLWE.Instance.instType.instRLWR\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName = MName \"InstRLWR\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Instance.instType.instRLWR\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName' = FName \"instRLWR\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.InstanceRLWR\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"InstanceRLWR\"}), hsRawDefault = Nothing, hsDefault = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False}], enums = [], oneofs = [OneofInfo {oneofName = ProtoName {protobufName = FIName \".RLWE.Instance.instType\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\",MName \"Instance\"], baseName = MName \"InstType\"}, oneofFName = ProtoFName {protobufName' = FIName \".RLWE.Instance.instType\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Instance\"], baseName' = FName \"instType\", baseNamePrefix' = \"\"}, oneofFilePath = [\"Crypto\",\"Challenges\",\"RLWE\",\"Proto\",\"RLWE\",\"Instance\",\"InstType.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".RLWE.Instance.instType.instCont\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName = MName \"InstCont\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Instance.instType.instCont\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName' = FName \"instCont\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.InstanceCont\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"InstanceCont\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".RLWE.Instance.instType.instDisc\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName = MName \"InstDisc\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Instance.instType.instDisc\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName' = FName \"instDisc\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.InstanceDisc\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"InstanceDisc\"}), hsRawDefault = Nothing, hsDefault = Nothing}),(ProtoName {protobufName = FIName \".RLWE.Instance.instType.instRLWR\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName = MName \"InstRLWR\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".RLWE.Instance.instType.instRLWR\", haskellPrefix' = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule' = [MName \"RLWE\",MName \"Instance\",MName \"InstType\"], baseName' = FName \"instRLWR\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".RLWE.InstanceRLWR\", haskellPrefix = [MName \"Crypto\",MName \"Challenges\",MName \"RLWE\",MName \"Proto\"], parentModule = [MName \"RLWE\"], baseName = MName \"InstanceRLWR\"}), hsRawDefault = Nothing, hsDefault = Nothing})], oneofMakeLenses = False}], knownKeyMap = fromList []}"

fileDescriptorProto :: FileDescriptorProto
fileDescriptorProto
 = P'.getFromBS (P'.wireGet 11)
    (P'.pack
      "\206\ENQ\n\nRLWE.proto\SUB\tLol.proto\"4\n\nSampleCont\DC2\DC2\n\SOHa\CAN\SOH \STX(\v2\a.Lol.Rq\DC2\DC2\n\SOHb\CAN\STX \STX(\v2\a.Lol.Kq\"4\n\nSampleDisc\DC2\DC2\n\SOHa\CAN\SOH \STX(\v2\a.Lol.Rq\DC2\DC2\n\SOHb\CAN\STX \STX(\v2\a.Lol.Rq\"4\n\nSampleRLWR\DC2\DC2\n\SOHa\CAN\SOH \STX(\v2\a.Lol.Rq\DC2\DC2\n\SOHb\CAN\STX \STX(\v2\a.Lol.Rq\"p\n\fInstanceCont\DC2\n\n\STXid\CAN\SOH \STX(\r\DC2\t\n\SOHm\CAN\STX \STX(\EOT\DC2\t\n\SOHq\CAN\ETX \STX(\EOT\DC2\f\n\EOTsvar\CAN\EOT \STX(\SOH\DC2\r\n\ENQbound\CAN\ENQ \STX(\SOH\DC2!\n\asamples\CAN\ACK \ETX(\v2\DLE.RLWE.SampleCont\"p\n\fInstanceDisc\DC2\n\n\STXid\CAN\SOH \STX(\r\DC2\t\n\SOHm\CAN\STX \STX(\EOT\DC2\t\n\SOHq\CAN\ETX \STX(\EOT\DC2\f\n\EOTsvar\CAN\EOT \STX(\SOH\DC2\r\n\ENQbound\CAN\ENQ \STX(\EOT\DC2!\n\asamples\CAN\ACK \ETX(\v2\DLE.RLWE.SampleDisc\"^\n\fInstanceRLWR\DC2\n\n\STXid\CAN\SOH \STX(\r\DC2\t\n\SOHm\CAN\STX \STX(\EOT\DC2\t\n\SOHq\CAN\ETX \STX(\EOT\DC2\t\n\SOHp\CAN\EOT \STX(\EOT\DC2!\n\asamples\CAN\ENQ \ETX(\v2\DLE.RLWE.SampleRLWR\">\n\ACKSecret\DC2\n\n\STXid\CAN\SOH \STX(\r\DC2\t\n\SOHm\CAN\STX \STX(\EOT\DC2\t\n\SOHq\CAN\ETX \STX(\EOT\DC2\DC2\n\SOHs\CAN\EOT \STX(\v2\a.Lol.Rq\"\142\SOH\n\bInstance\DC2&\n\binstCont\CAN\SOH \SOH(\v2\DC2.RLWE.InstanceContH\NUL\DC2&\n\binstDisc\CAN\STX \SOH(\v2\DC2.RLWE.InstanceDiscH\NUL\DC2&\n\binstRLWR\CAN\ETX \SOH(\v2\DC2.RLWE.InstanceRLWRH\NULB\n\n\binstType")