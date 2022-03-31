import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'markers_record.g.dart';

abstract class MarkersRecord
    implements Built<MarkersRecord, MarkersRecordBuilder> {
  static Serializer<MarkersRecord> get serializer => _$markersRecordSerializer;

  @nullable
  String get name;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MarkersRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('markers');

  static Stream<MarkersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MarkersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MarkersRecord._();
  factory MarkersRecord([void Function(MarkersRecordBuilder) updates]) =
      _$MarkersRecord;

  static MarkersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMarkersRecordData({
  String name,
  LatLng location,
}) =>
    serializers.toFirestore(
        MarkersRecord.serializer,
        MarkersRecord((m) => m
          ..name = name
          ..location = location));
