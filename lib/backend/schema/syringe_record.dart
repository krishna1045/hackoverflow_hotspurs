import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'syringe_record.g.dart';

abstract class SyringeRecord
    implements Built<SyringeRecord, SyringeRecordBuilder> {
  static Serializer<SyringeRecord> get serializer => _$syringeRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'syrng_name')
  String get syrngName;

  @nullable
  @BuiltValueField(wireName: 'syrng_times_perday')
  int get syrngTimesPerday;

  @nullable
  @BuiltValueField(wireName: 'Quantity')
  int get quantity;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SyringeRecordBuilder builder) => builder
    ..syrngName = ''
    ..syrngTimesPerday = 0
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Syringe');

  static Stream<SyringeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SyringeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SyringeRecord._();
  factory SyringeRecord([void Function(SyringeRecordBuilder) updates]) =
      _$SyringeRecord;

  static SyringeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSyringeRecordData({
  String syrngName,
  int syrngTimesPerday,
  int quantity,
}) =>
    serializers.toFirestore(
        SyringeRecord.serializer,
        SyringeRecord((s) => s
          ..syrngName = syrngName
          ..syrngTimesPerday = syrngTimesPerday
          ..quantity = quantity));
