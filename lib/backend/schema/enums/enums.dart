import 'package:collection/collection.dart';

enum Level {
  Student,
  Graduate,
  Postgraduate,
  MastersDegree,
  DoctoralDegree,
  Undefined,
}

enum Goal {
  UpToDateResearchDiscoveries,
  PrepareExamsTests,
  Deepen,
  LearnConceptsTechniques,
  ContentLecturesClasses,
  Ideas,
  AcademicResearch,
  Undefined,
}

enum Preference {
  Texts,
  ShortAudios,
  LongAudios,
  SmallVideos,
  Undefined,
}

enum Dedication {
  Daily,
  ThreeTimesWeek,
  Weekly,
  Custom,
  Undefined,
}

enum TypeContent {
  Book,
  Article,
  Audio,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Level):
      return Level.values.deserialize(value) as T?;
    case (Goal):
      return Goal.values.deserialize(value) as T?;
    case (Preference):
      return Preference.values.deserialize(value) as T?;
    case (Dedication):
      return Dedication.values.deserialize(value) as T?;
    case (TypeContent):
      return TypeContent.values.deserialize(value) as T?;
    default:
      return null;
  }
}
