import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'syrup_record.g.dart';

abstract class SyrupRecord implements Built<SyrupRecord, SyrupRecordBuilder> {
  static Serializer<SyrupRecord> get serializer => _$syrupRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Syrup_name')
  String get syrupName;

  @nullable
  @BuiltValueField(wireName: 'mL_per_bottle')
  int get mLPerBottle;

  @nullable
  @BuiltValueField(wireName: 'Tot_bottles')
  int get totBottles;

  @nullable
  @BuiltValueField(wireName: 'mL_per_day')
  int get mLPerDay;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SyrupRecordBuilder builder) => builder
    ..syrupName = ''
    ..mLPerBottle = 0
    ..totBottles = 0
    ..mLPerDay = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Syrup');

  static Stream<SyrupRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SyrupRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SyrupRecord._();
  factory SyrupRecord([void Function(SyrupRecordBuilder) updates]) =
      _$SyrupRecord;

  static SyrupRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSyrupRecordData({
  String syrupName,
  int mLPerBottle,
  int totBottles,
  int mLPerDay,
}) =>
    serializers.toFirestore(
        SyrupRecord.serializer,
        SyrupRecord((s) => s
          ..syrupName = syrupName
          ..mLPerBottle = mLPerBottle
          ..totBottles = totBottles
          ..mLPerDay = mLPerDay));
