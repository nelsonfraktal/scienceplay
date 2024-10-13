// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AreaResultsStruct extends BaseStruct {
  AreaResultsStruct({
    List<ResultsStruct>? results,
    int? cursor,
    int? count,
    int? remaining,
  })  : _results = results,
        _cursor = cursor,
        _count = count,
        _remaining = remaining;

  // "results" field.
  List<ResultsStruct>? _results;
  List<ResultsStruct> get results => _results ?? const [];
  set results(List<ResultsStruct>? val) => _results = val;

  void updateResults(Function(List<ResultsStruct>) updateFn) {
    updateFn(_results ??= []);
  }

  bool hasResults() => _results != null;

  // "cursor" field.
  int? _cursor;
  int get cursor => _cursor ?? 0;
  set cursor(int? val) => _cursor = val;

  void incrementCursor(int amount) => cursor = cursor + amount;

  bool hasCursor() => _cursor != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "remaining" field.
  int? _remaining;
  int get remaining => _remaining ?? 0;
  set remaining(int? val) => _remaining = val;

  void incrementRemaining(int amount) => remaining = remaining + amount;

  bool hasRemaining() => _remaining != null;

  static AreaResultsStruct fromMap(Map<String, dynamic> data) =>
      AreaResultsStruct(
        results: getStructList(
          data['results'],
          ResultsStruct.fromMap,
        ),
        cursor: castToType<int>(data['cursor']),
        count: castToType<int>(data['count']),
        remaining: castToType<int>(data['remaining']),
      );

  static AreaResultsStruct? maybeFromMap(dynamic data) => data is Map
      ? AreaResultsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'results': _results?.map((e) => e.toMap()).toList(),
        'cursor': _cursor,
        'count': _count,
        'remaining': _remaining,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'results': serializeParam(
          _results,
          ParamType.DataStruct,
          isList: true,
        ),
        'cursor': serializeParam(
          _cursor,
          ParamType.int,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'remaining': serializeParam(
          _remaining,
          ParamType.int,
        ),
      }.withoutNulls;

  static AreaResultsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AreaResultsStruct(
        results: deserializeStructParam<ResultsStruct>(
          data['results'],
          ParamType.DataStruct,
          true,
          structBuilder: ResultsStruct.fromSerializableMap,
        ),
        cursor: deserializeParam(
          data['cursor'],
          ParamType.int,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        remaining: deserializeParam(
          data['remaining'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AreaResultsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AreaResultsStruct &&
        listEquality.equals(results, other.results) &&
        cursor == other.cursor &&
        count == other.count &&
        remaining == other.remaining;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([results, cursor, count, remaining]);
}

AreaResultsStruct createAreaResultsStruct({
  int? cursor,
  int? count,
  int? remaining,
}) =>
    AreaResultsStruct(
      cursor: cursor,
      count: count,
      remaining: remaining,
    );
