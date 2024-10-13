import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

String? imageToBase64(FFUploadedFile? file) {
  if (file == null || file.bytes == null) {
    return null;
  }

  String base64String = base64Encode(file.bytes!);

  return base64String;
}

bool compareEnumDedicationJson(
  Dedication value,
  dynamic jsonContent,
) {
  // verify value in json if equals to content in "value"
  return value.serialize() == jsonContent;
}

bool compareEnumLevelJson(
  Level value,
  dynamic jsonContent,
) {
  // verify value in json if equals to content in "value"
  return value.serialize() == jsonContent;
}

bool compareStringJson(
  String value,
  dynamic jsonContent,
) {
  // verify value in json if equals to content in "value"
  if (jsonContent is String) {
    return jsonContent == value;
  } else if (jsonContent is Map<String, dynamic>) {
    for (final key in jsonContent.keys) {
      if (compareStringJson(value, jsonContent[key])) {
        return true;
      }
    }
  } else if (jsonContent is List<dynamic>) {
    for (final item in jsonContent) {
      if (compareStringJson(value, item)) {
        return true;
      }
    }
  }
  return false;
}

List<dynamic> jsonToListJson(dynamic paramJson) {
  // convert a json to list json
  return List<dynamic>.from(paramJson);
}

int getIndexSpecificItemInOccupation(
  List<OccupationOrInterestStruct> lista,
  String idOI,
) {
  // return index of item in "lista" that have id equal to "idOI"
  for (int i = 0; i < lista.length; i++) {
    if (lista[i].id == idOI) {
      return i;
    }
  }
  return -1;
}

int getIndexSpecificItemInPreferences(
  List<PreferencesStruct> lista,
  Preference idPreference,
) {
  // return index of item in "lista" that have id equal to "idPreference"
  for (int i = 0; i < lista.length; i++) {
    if (lista[i].id == idPreference) {
      return i;
    }
  }
  return -1;
}

int getIndexSpecificItemInArea(
  List<AreaInterestStruct> lista,
  String idAI,
) {
  // return index of item in "lista" that have id equal to "idAI"
  for (int i = 0; i < lista.length; i++) {
    if (lista[i].id == idAI) {
      return i;
    }
  }
  return -1;
}

bool listOccupationContainsItemWithValue(
  List<OccupationOrInterestStruct> lista,
  String idOI,
) {
  // verify if "lista" has an item with id equal to "idOI"
  return lista.any((item) => item.id == idOI);
}

Dedication getDedicationFromName(String? dedicationString) {
  // return Dedication that match with "dedicationString"
  switch (dedicationString) {
    case 'Daily':
      return Dedication.Daily;
    case 'ThreeTimesWeek':
      return Dedication.ThreeTimesWeek;
    case 'Weekly':
      return Dedication.Weekly;
    case 'Custom':
      return Dedication.Custom;
    default:
      return Dedication.Undefined;
  }
}

int getIndexSpecificItemInGoals(
  List<GoalsStruct> lista,
  Goal idGoal,
) {
  // return index of item in "lista" that have id equal to "idGoal"
  for (int i = 0; i < lista.length; i++) {
    if (lista[i].id == idGoal) {
      return i;
    }
  }
  return -1;
}

List<String> dataTypeToListOfIds(List<OccupationOrInterestStruct> lista) {
  // return a list of "lista.id"
  return lista.map((item) => item.id).toList();
}

bool listGoalsContainsItemWithValue(
  List<GoalsStruct> lista,
  Goal idGoal,
) {
  // verify if "lista" has an item with id equal to "idGoal"
  return lista.any((item) => item.id == idGoal);
}

bool listPreferencesContainsItemWithValue(
  List<PreferencesStruct> lista,
  Preference idTypeContent,
) {
  // verify if "lista" has an item with id equal to "idTypeContent"
  return lista.any((item) => item.id == idTypeContent);
}

bool listAreaContainsItemWithValue(
  List<AreaInterestStruct> lista,
  String idAI,
) {
  // verify if "lista" has an item with id equal to "idAI"
  return lista.any((item) => item.id == idAI);
}

Level getLevelFromName(String? levelString) {
  // return Level that match with "levelString"
  switch (levelString) {
    case 'Student':
      return Level.Student;
    case 'Graduate':
      return Level.Graduate;
    case 'Postgraduate':
      return Level.Postgraduate;
    case 'MastersDegree':
      return Level.MastersDegree;
    case 'DoctoralDegree':
      return Level.DoctoralDegree;
    default:
      return Level.Undefined;
  }
}

Goal getGoalFromName(String goalString) {
  // return Goal that match with "goalString"
  switch (goalString) {
    case 'Stay up to date with the latest research and discoveries':
      return Goal.UpToDateResearchDiscoveries;
    case 'Prepare for exams or tests':
      return Goal.PrepareExamsTests;
    case 'Deepen my knowledge in a specific specialty':
      return Goal.Deepen;
    case 'Learn new concepts and techniques':
      return Goal.LearnConceptsTechniques;
    case 'Content for lectures and classes':
      return Goal.ContentLecturesClasses;
    case 'Ideas for Social Media Content':
      return Goal.Ideas;
    case 'Academic Research':
      return Goal.AcademicResearch;
    default:
      return Goal.Undefined;
  }
}

String formatTextToBold(
  String text,
  String keyword,
) {
  // if text contains the "keyword" format the keyword to bold
  return text.replaceAll(keyword, '<b>$keyword</b>');
}

List<String> reverseList(List<String> lista) {
  return lista.reversed.toList();
}

bool verifyIfJsonIsEmpty(dynamic content) {
  // verify if value in "content" is empty
  if (content == null) {
    return true;
  } else if (content is String && content.isEmpty) {
    return true;
  } else if (content is List && content.isEmpty) {
    return true;
  } else if (content is Map && content.isEmpty) {
    return true;
  } else {
    return false;
  }
}

bool containsHttps(String url) {
  // verify if string contains "https:"
  return url.contains("https:");
}

int? datetounix(String? date) {
  // date to unix
  if (date == null) {
    return null;
  }
  final dateTime = DateFormat('yyyy-MM-dd HH:mm:ss').parse(date);
  return dateTime.millisecondsSinceEpoch ~/ 1000;
}

String secondsToTimeV2(int seconds) {
  // format seconds as #h #m #s, where # is the digit, h equal to hours, m equal to minutes and s equal to seconds
  final hours = (seconds / 3600).floor();
  final minutes = ((seconds / 60) % 60).floor();
  return '${hours}h ${minutes}m';
}

bool listJsonInKeyContainsId(
  String id,
  List<dynamic> listaIds,
  String key,
) {
  // return if "listaIds" with "key"contains "id"
  return listaIds.any((element) => element[key].toString().contains(id));
}

int newCustomFunction(
  List<String> lista1,
  List<String> lista2,
) {
  // return 1 if list1 isn't empty and list2 is empty, return 2 if list2 isn't empty and list1 is empty and return 3 if both isn't empty
  if (lista1.isNotEmpty && lista2.isEmpty) {
    return 1;
  } else if (lista2.isNotEmpty && lista1.isEmpty) {
    return 2;
  } else if (lista1.isNotEmpty && lista2.isNotEmpty) {
    return 3;
  } else {
    return 0;
  }
}

List<String> stringToList(String texto) {
  // return "texto" inside a list
  return [texto];
}

String getFirstLetterDayOfWeek(
  int? lessDays,
  String language,
) {
  // get current day substract "lessDays" if not null and return first letter of day of week
  DateTime now = DateTime.now();

  if (lessDays != null) {
    now = now.subtract(Duration(days: lessDays));
  }

  String dayOfWeek = DateFormat('EEEE').format(now);
  if (language == 'Português') {
    switch (dayOfWeek) {
      case 'Monday':
        return 'S';
      case 'Tuesday':
        return 'T';
      case 'Wednesday':
        return 'Q';
      case 'Thursday':
        return 'Q';
      case 'Friday':
        return 'S';
      case 'Monday':
        return 'S';
      case 'Sunday':
        return 'D';
    }
  }
  return dayOfWeek[0];
}

int numbersOfTrue(
  bool seg,
  bool ter,
  bool qua,
  bool qui,
  bool sex,
  bool sab,
  bool dom,
) {
  // return how much true values has in arguments
  int count = 0;
  if (seg) count++;
  if (ter) count++;
  if (qua) count++;
  if (qui) count++;
  if (sex) count++;
  if (sab) count++;
  if (dom) count++;
  return count;
}

String timeLeftToEndDay(String? language) {
  // return time left to end day in hour, if less 1 hour return minutes
  final now = DateTime.now();
  final endOfDay = DateTime(now.year, now.month, now.day, 23, 59, 59);
  final timeLeft = endOfDay.difference(now);
  if (timeLeft.inHours >= 1) {
    if (language == 'Português') {
      if (timeLeft.inHours == 1) {
        return '${timeLeft.inHours} hora restante';
      } else {
        return '${timeLeft.inHours} horas restantes';
      }
    } else {
      if (timeLeft.inHours == 1) {
        return '${timeLeft.inHours} hour left';
      } else {
        return '${timeLeft.inHours} hours left';
      }
    }
  } else {
    if (language == 'Português') {
      if (timeLeft.inMinutes == 1) {
        return '${timeLeft.inMinutes} minuto restante';
      } else {
        return '${timeLeft.inMinutes} minutos restantes';
      }
    } else {
      if (timeLeft.inMinutes == 1) {
        return '${timeLeft.inMinutes} minute left';
      } else {
        return '${timeLeft.inMinutes} minutes left';
      }
    }
  }
}

List<dynamic> getSpecialties(
  List<dynamic> content,
  int index,
) {
  // return key "specialties" in "index"
  return content[index]["specialties"];
}

double progressContentQuestBook(List<dynamic> dailyQuest) {
  // verify each 'status' in 'dailyQuest' count how many are 'Completed' divide this count with number of items in 'dailyQuest'
  int completedCount = 0;
  for (var quest in dailyQuest) {
    if (quest['status'] == 'Checked' || quest['status'] == 'Feito') {
      completedCount++;
    }
  }
  return completedCount / dailyQuest.length;
}

bool questBookCompleted(List<String> lista) {
  // return if quantity of 'Checked' or 'Feito' in 'lista' is equal number of items in 'lista'
  int checkedCount = 0;
  for (String item in lista) {
    if (item == 'Checked' || item == 'Feito') {
      checkedCount++;
    }
  }
  return checkedCount == lista.length - 1;
}

int countItemsInList(List<dynamic> lista) {
  // return count of items in list
  return lista.length;
}

String getImageInIndex(
  List<dynamic> lista,
  int n,
) {
  final lastIndex = lista.length - n;
  final item = lista[lastIndex];
  return item['cover_image'].toString();
}
