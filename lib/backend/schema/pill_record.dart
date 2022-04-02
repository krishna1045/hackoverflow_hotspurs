import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pill_record.g.dart';

abstract class PillRecord implements Built<PillRecord, PillRecordBuilder> {
  static Serializer<PillRecord> get serializer => _$pillRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'pill_name')
  String get pillName;

  @nullable
  @BuiltValueField(wireName: 'pill_per_day')
  int get pillPerDay;

  @nullable
  @BuiltValueField(wireName: 'Quantatiy')
  int get quantatiy;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PillRecordBuilder builder) => builder
    ..pillName = ''
    ..pillPerDay = 0
    ..quantatiy = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pill');

  static Stream<PillRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PillRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PillRecord._();
  factory PillRecord([void Function(PillRecordBuilder) updates]) = _$PillRecord;

  static PillRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPillRecordData({
  String pillName,
  int pillPerDay,
  int quantatiy,
}) =>
    serializers.toFirestore(
        PillRecord.serializer,
        PillRecord((p) => p
          ..pillName = pillName
          ..pillPerDay = pillPerDay
          ..quantatiy = quantatiy));
