// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RatingStruct extends BaseStruct {
  RatingStruct({
    double? rate,
  }) : _rate = rate;

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  set rate(double? val) => _rate = val;

  void incrementRate(double amount) => rate = rate + amount;

  bool hasRate() => _rate != null;

  static RatingStruct fromMap(Map<String, dynamic> data) => RatingStruct(
        rate: castToType<double>(data['rate']),
      );

  static RatingStruct? maybeFromMap(dynamic data) =>
      data is Map ? RatingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'rate': _rate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'rate': serializeParam(
          _rate,
          ParamType.double,
        ),
      }.withoutNulls;

  static RatingStruct fromSerializableMap(Map<String, dynamic> data) =>
      RatingStruct(
        rate: deserializeParam(
          data['rate'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RatingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RatingStruct && rate == other.rate;
  }

  @override
  int get hashCode => const ListEquality().hash([rate]);
}

RatingStruct createRatingStruct({
  double? rate,
}) =>
    RatingStruct(
      rate: rate,
    );
