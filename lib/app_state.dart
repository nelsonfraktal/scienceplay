import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _historicoPesquisa =
          prefs.getStringList('ff_historicoPesquisa') ?? _historicoPesquisa;
    });
    _safeInit(() {
      _favoritado = prefs.getString('ff_favoritado') ?? _favoritado;
    });
    _safeInit(() {
      _occupationsOrInterests = prefs
              .getStringList('ff_occupationsOrInterests')
              ?.map((x) {
                try {
                  return OccupationOrInterestStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _occupationsOrInterests;
    });
    _safeInit(() {
      _areasOfInterests = prefs
              .getStringList('ff_areasOfInterests')
              ?.map((x) {
                try {
                  return AreaInterestStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _areasOfInterests;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userLevel')) {
        try {
          final serializedData = prefs.getString('ff_userLevel') ?? '{}';
          _userLevel =
              LevelStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _userGoals = prefs
              .getStringList('ff_userGoals')
              ?.map((x) {
                try {
                  return GoalsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _userGoals;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userDedication')) {
        try {
          final serializedData = prefs.getString('ff_userDedication') ?? '{}';
          _userDedication = TimeAvailableStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _userPreferencesContents = prefs
              .getStringList('ff_userPreferencesContents')
              ?.map((x) {
                try {
                  return PreferencesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _userPreferencesContents;
    });
    _safeInit(() {
      _favoriteContents =
          prefs.getStringList('ff_favoriteContents') ?? _favoriteContents;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_testeUploadDoc')) {
        try {
          _testeUploadDoc =
              jsonDecode(prefs.getString('ff_testeUploadDoc') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _badgeIniciouUmaPlaylist = prefs.getBool('ff_badgeIniciouUmaPlaylist') ??
          _badgeIniciouUmaPlaylist;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _countryName = '';
  String get countryName => _countryName;
  set countryName(String value) {
    _countryName = value;
  }

  String _countryCode = '';
  String get countryCode => _countryCode;
  set countryCode(String value) {
    _countryCode = value;
  }

  String _countryDialCode = '';
  String get countryDialCode => _countryDialCode;
  set countryDialCode(String value) {
    _countryDialCode = value;
  }

  List<String> _historicoPesquisa = [];
  List<String> get historicoPesquisa => _historicoPesquisa;
  set historicoPesquisa(List<String> value) {
    _historicoPesquisa = value;
    prefs.setStringList('ff_historicoPesquisa', value);
  }

  void addToHistoricoPesquisa(String value) {
    historicoPesquisa.add(value);
    prefs.setStringList('ff_historicoPesquisa', _historicoPesquisa);
  }

  void removeFromHistoricoPesquisa(String value) {
    historicoPesquisa.remove(value);
    prefs.setStringList('ff_historicoPesquisa', _historicoPesquisa);
  }

  void removeAtIndexFromHistoricoPesquisa(int index) {
    historicoPesquisa.removeAt(index);
    prefs.setStringList('ff_historicoPesquisa', _historicoPesquisa);
  }

  void updateHistoricoPesquisaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    historicoPesquisa[index] = updateFn(_historicoPesquisa[index]);
    prefs.setStringList('ff_historicoPesquisa', _historicoPesquisa);
  }

  void insertAtIndexInHistoricoPesquisa(int index, String value) {
    historicoPesquisa.insert(index, value);
    prefs.setStringList('ff_historicoPesquisa', _historicoPesquisa);
  }

  String _favoritado = 'False';
  String get favoritado => _favoritado;
  set favoritado(String value) {
    _favoritado = value;
    prefs.setString('ff_favoritado', value);
  }

  String _imgProfile = '';
  String get imgProfile => _imgProfile;
  set imgProfile(String value) {
    _imgProfile = value;
  }

  List<OccupationOrInterestStruct> _occupationsOrInterests = [];
  List<OccupationOrInterestStruct> get occupationsOrInterests =>
      _occupationsOrInterests;
  set occupationsOrInterests(List<OccupationOrInterestStruct> value) {
    _occupationsOrInterests = value;
    prefs.setStringList(
        'ff_occupationsOrInterests', value.map((x) => x.serialize()).toList());
  }

  void addToOccupationsOrInterests(OccupationOrInterestStruct value) {
    occupationsOrInterests.add(value);
    prefs.setStringList('ff_occupationsOrInterests',
        _occupationsOrInterests.map((x) => x.serialize()).toList());
  }

  void removeFromOccupationsOrInterests(OccupationOrInterestStruct value) {
    occupationsOrInterests.remove(value);
    prefs.setStringList('ff_occupationsOrInterests',
        _occupationsOrInterests.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOccupationsOrInterests(int index) {
    occupationsOrInterests.removeAt(index);
    prefs.setStringList('ff_occupationsOrInterests',
        _occupationsOrInterests.map((x) => x.serialize()).toList());
  }

  void updateOccupationsOrInterestsAtIndex(
    int index,
    OccupationOrInterestStruct Function(OccupationOrInterestStruct) updateFn,
  ) {
    occupationsOrInterests[index] = updateFn(_occupationsOrInterests[index]);
    prefs.setStringList('ff_occupationsOrInterests',
        _occupationsOrInterests.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOccupationsOrInterests(
      int index, OccupationOrInterestStruct value) {
    occupationsOrInterests.insert(index, value);
    prefs.setStringList('ff_occupationsOrInterests',
        _occupationsOrInterests.map((x) => x.serialize()).toList());
  }

  List<AreaInterestStruct> _areasOfInterests = [];
  List<AreaInterestStruct> get areasOfInterests => _areasOfInterests;
  set areasOfInterests(List<AreaInterestStruct> value) {
    _areasOfInterests = value;
    prefs.setStringList(
        'ff_areasOfInterests', value.map((x) => x.serialize()).toList());
  }

  void addToAreasOfInterests(AreaInterestStruct value) {
    areasOfInterests.add(value);
    prefs.setStringList('ff_areasOfInterests',
        _areasOfInterests.map((x) => x.serialize()).toList());
  }

  void removeFromAreasOfInterests(AreaInterestStruct value) {
    areasOfInterests.remove(value);
    prefs.setStringList('ff_areasOfInterests',
        _areasOfInterests.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAreasOfInterests(int index) {
    areasOfInterests.removeAt(index);
    prefs.setStringList('ff_areasOfInterests',
        _areasOfInterests.map((x) => x.serialize()).toList());
  }

  void updateAreasOfInterestsAtIndex(
    int index,
    AreaInterestStruct Function(AreaInterestStruct) updateFn,
  ) {
    areasOfInterests[index] = updateFn(_areasOfInterests[index]);
    prefs.setStringList('ff_areasOfInterests',
        _areasOfInterests.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAreasOfInterests(int index, AreaInterestStruct value) {
    areasOfInterests.insert(index, value);
    prefs.setStringList('ff_areasOfInterests',
        _areasOfInterests.map((x) => x.serialize()).toList());
  }

  LevelStruct _userLevel = LevelStruct.fromSerializableMap(
      jsonDecode('{\"id\":\"Undefined\",\"display\":\"Undefined\"}'));
  LevelStruct get userLevel => _userLevel;
  set userLevel(LevelStruct value) {
    _userLevel = value;
    prefs.setString('ff_userLevel', value.serialize());
  }

  void updateUserLevelStruct(Function(LevelStruct) updateFn) {
    updateFn(_userLevel);
    prefs.setString('ff_userLevel', _userLevel.serialize());
  }

  List<GoalsStruct> _userGoals = [];
  List<GoalsStruct> get userGoals => _userGoals;
  set userGoals(List<GoalsStruct> value) {
    _userGoals = value;
    prefs.setStringList(
        'ff_userGoals', value.map((x) => x.serialize()).toList());
  }

  void addToUserGoals(GoalsStruct value) {
    userGoals.add(value);
    prefs.setStringList(
        'ff_userGoals', _userGoals.map((x) => x.serialize()).toList());
  }

  void removeFromUserGoals(GoalsStruct value) {
    userGoals.remove(value);
    prefs.setStringList(
        'ff_userGoals', _userGoals.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromUserGoals(int index) {
    userGoals.removeAt(index);
    prefs.setStringList(
        'ff_userGoals', _userGoals.map((x) => x.serialize()).toList());
  }

  void updateUserGoalsAtIndex(
    int index,
    GoalsStruct Function(GoalsStruct) updateFn,
  ) {
    userGoals[index] = updateFn(_userGoals[index]);
    prefs.setStringList(
        'ff_userGoals', _userGoals.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInUserGoals(int index, GoalsStruct value) {
    userGoals.insert(index, value);
    prefs.setStringList(
        'ff_userGoals', _userGoals.map((x) => x.serialize()).toList());
  }

  TimeAvailableStruct _userDedication = TimeAvailableStruct.fromSerializableMap(
      jsonDecode('{\"id\":\"Undefined\"}'));
  TimeAvailableStruct get userDedication => _userDedication;
  set userDedication(TimeAvailableStruct value) {
    _userDedication = value;
    prefs.setString('ff_userDedication', value.serialize());
  }

  void updateUserDedicationStruct(Function(TimeAvailableStruct) updateFn) {
    updateFn(_userDedication);
    prefs.setString('ff_userDedication', _userDedication.serialize());
  }

  List<PreferencesStruct> _userPreferencesContents = [];
  List<PreferencesStruct> get userPreferencesContents =>
      _userPreferencesContents;
  set userPreferencesContents(List<PreferencesStruct> value) {
    _userPreferencesContents = value;
    prefs.setStringList(
        'ff_userPreferencesContents', value.map((x) => x.serialize()).toList());
  }

  void addToUserPreferencesContents(PreferencesStruct value) {
    userPreferencesContents.add(value);
    prefs.setStringList('ff_userPreferencesContents',
        _userPreferencesContents.map((x) => x.serialize()).toList());
  }

  void removeFromUserPreferencesContents(PreferencesStruct value) {
    userPreferencesContents.remove(value);
    prefs.setStringList('ff_userPreferencesContents',
        _userPreferencesContents.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromUserPreferencesContents(int index) {
    userPreferencesContents.removeAt(index);
    prefs.setStringList('ff_userPreferencesContents',
        _userPreferencesContents.map((x) => x.serialize()).toList());
  }

  void updateUserPreferencesContentsAtIndex(
    int index,
    PreferencesStruct Function(PreferencesStruct) updateFn,
  ) {
    userPreferencesContents[index] = updateFn(_userPreferencesContents[index]);
    prefs.setStringList('ff_userPreferencesContents',
        _userPreferencesContents.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInUserPreferencesContents(
      int index, PreferencesStruct value) {
    userPreferencesContents.insert(index, value);
    prefs.setStringList('ff_userPreferencesContents',
        _userPreferencesContents.map((x) => x.serialize()).toList());
  }

  String _audioPref = '';
  String get audioPref => _audioPref;
  set audioPref(String value) {
    _audioPref = value;
  }

  List<String> _favoriteContents = [];
  List<String> get favoriteContents => _favoriteContents;
  set favoriteContents(List<String> value) {
    _favoriteContents = value;
    prefs.setStringList('ff_favoriteContents', value);
  }

  void addToFavoriteContents(String value) {
    favoriteContents.add(value);
    prefs.setStringList('ff_favoriteContents', _favoriteContents);
  }

  void removeFromFavoriteContents(String value) {
    favoriteContents.remove(value);
    prefs.setStringList('ff_favoriteContents', _favoriteContents);
  }

  void removeAtIndexFromFavoriteContents(int index) {
    favoriteContents.removeAt(index);
    prefs.setStringList('ff_favoriteContents', _favoriteContents);
  }

  void updateFavoriteContentsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    favoriteContents[index] = updateFn(_favoriteContents[index]);
    prefs.setStringList('ff_favoriteContents', _favoriteContents);
  }

  void insertAtIndexInFavoriteContents(int index, String value) {
    favoriteContents.insert(index, value);
    prefs.setStringList('ff_favoriteContents', _favoriteContents);
  }

  String _clipboard = '';
  String get clipboard => _clipboard;
  set clipboard(String value) {
    _clipboard = value;
  }

  dynamic _testeUploadDoc;
  dynamic get testeUploadDoc => _testeUploadDoc;
  set testeUploadDoc(dynamic value) {
    _testeUploadDoc = value;
    prefs.setString('ff_testeUploadDoc', jsonEncode(value));
  }

  String _currentDuration = '';
  String get currentDuration => _currentDuration;
  set currentDuration(String value) {
    _currentDuration = value;
  }

  bool _badgeIniciouUmaPlaylist = false;
  bool get badgeIniciouUmaPlaylist => _badgeIniciouUmaPlaylist;
  set badgeIniciouUmaPlaylist(bool value) {
    _badgeIniciouUmaPlaylist = value;
    prefs.setBool('ff_badgeIniciouUmaPlaylist', value);
  }

  dynamic _conteudoSelecionado;
  dynamic get conteudoSelecionado => _conteudoSelecionado;
  set conteudoSelecionado(dynamic value) {
    _conteudoSelecionado = value;
  }

  dynamic _playlistSelecionada;
  dynamic get playlistSelecionada => _playlistSelecionada;
  set playlistSelecionada(dynamic value) {
    _playlistSelecionada = value;
  }

  bool _trackSendoTocada = false;
  bool get trackSendoTocada => _trackSendoTocada;
  set trackSendoTocada(bool value) {
    _trackSendoTocada = value;
  }

  bool _foiParaProximoAudioTrack = false;
  bool get foiParaProximoAudioTrack => _foiParaProximoAudioTrack;
  set foiParaProximoAudioTrack(bool value) {
    _foiParaProximoAudioTrack = value;
  }

  int _auxIndex = 0;
  int get auxIndex => _auxIndex;
  set auxIndex(int value) {
    _auxIndex = value;
  }

  bool _nextPrevClicado = false;
  bool get nextPrevClicado => _nextPrevClicado;
  set nextPrevClicado(bool value) {
    _nextPrevClicado = value;
  }

  final _queryContentsWeLoveManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryContentsWeLove({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryContentsWeLoveManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryContentsWeLoveCache() => _queryContentsWeLoveManager.clear();
  void clearQueryContentsWeLoveCacheKey(String? uniqueKey) =>
      _queryContentsWeLoveManager.clearRequest(uniqueKey);

  final _queryContentsTopFreeManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryContentsTopFree({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryContentsTopFreeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryContentsTopFreeCache() => _queryContentsTopFreeManager.clear();
  void clearQueryContentsTopFreeCacheKey(String? uniqueKey) =>
      _queryContentsTopFreeManager.clearRequest(uniqueKey);

  final _queryMyFilesManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryMyFiles({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryMyFilesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryMyFilesCache() => _queryMyFilesManager.clear();
  void clearQueryMyFilesCacheKey(String? uniqueKey) =>
      _queryMyFilesManager.clearRequest(uniqueKey);

  final _queryGetAllContentsInMyFilesManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetAllContentsInMyFiles({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetAllContentsInMyFilesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetAllContentsInMyFilesCache() =>
      _queryGetAllContentsInMyFilesManager.clear();
  void clearQueryGetAllContentsInMyFilesCacheKey(String? uniqueKey) =>
      _queryGetAllContentsInMyFilesManager.clearRequest(uniqueKey);

  final _queryGetAllTrackInExploreManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetAllTrackInExplore({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetAllTrackInExploreManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetAllTrackInExploreCache() =>
      _queryGetAllTrackInExploreManager.clear();
  void clearQueryGetAllTrackInExploreCacheKey(String? uniqueKey) =>
      _queryGetAllTrackInExploreManager.clearRequest(uniqueKey);

  final _queryGlobalRankingManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGlobalRanking({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGlobalRankingManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGlobalRankingCache() => _queryGlobalRankingManager.clear();
  void clearQueryGlobalRankingCacheKey(String? uniqueKey) =>
      _queryGlobalRankingManager.clearRequest(uniqueKey);

  final _queryAreaHorseManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryAreaHorse({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryAreaHorseManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryAreaHorseCache() => _queryAreaHorseManager.clear();
  void clearQueryAreaHorseCacheKey(String? uniqueKey) =>
      _queryAreaHorseManager.clearRequest(uniqueKey);

  final _queryGetPurchasedTracksManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetPurchasedTracks({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetPurchasedTracksManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetPurchasedTracksCache() =>
      _queryGetPurchasedTracksManager.clear();
  void clearQueryGetPurchasedTracksCacheKey(String? uniqueKey) =>
      _queryGetPurchasedTracksManager.clearRequest(uniqueKey);

  final _queryGetRecommendedTracksManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetRecommendedTracks({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetRecommendedTracksManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetRecommendedTracksCache() =>
      _queryGetRecommendedTracksManager.clear();
  void clearQueryGetRecommendedTracksCacheKey(String? uniqueKey) =>
      _queryGetRecommendedTracksManager.clearRequest(uniqueKey);

  final _queryGetMyTracksManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetMyTracks({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetMyTracksManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetMyTracksCache() => _queryGetMyTracksManager.clear();
  void clearQueryGetMyTracksCacheKey(String? uniqueKey) =>
      _queryGetMyTracksManager.clearRequest(uniqueKey);

  final _queryMoedasDoUsuarioManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryMoedasDoUsuario({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryMoedasDoUsuarioManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryMoedasDoUsuarioCache() => _queryMoedasDoUsuarioManager.clear();
  void clearQueryMoedasDoUsuarioCacheKey(String? uniqueKey) =>
      _queryMoedasDoUsuarioManager.clearRequest(uniqueKey);

  final _queryUserStreakManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryUserStreak({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryUserStreakManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryUserStreakCache() => _queryUserStreakManager.clear();
  void clearQueryUserStreakCacheKey(String? uniqueKey) =>
      _queryUserStreakManager.clearRequest(uniqueKey);

  final _queryUserBadgesManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryUserBadges({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryUserBadgesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryUserBadgesCache() => _queryUserBadgesManager.clear();
  void clearQueryUserBadgesCacheKey(String? uniqueKey) =>
      _queryUserBadgesManager.clearRequest(uniqueKey);

  final _queryDailyQuestManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryDailyQuest({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryDailyQuestManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryDailyQuestCache() => _queryDailyQuestManager.clear();
  void clearQueryDailyQuestCacheKey(String? uniqueKey) =>
      _queryDailyQuestManager.clearRequest(uniqueKey);

  final _queryGetNotesContentManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetNotesContent({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetNotesContentManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetNotesContentCache() => _queryGetNotesContentManager.clear();
  void clearQueryGetNotesContentCacheKey(String? uniqueKey) =>
      _queryGetNotesContentManager.clearRequest(uniqueKey);

  final _queryGetContentJustForYouManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetContentJustForYou({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetContentJustForYouManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetContentJustForYouCache() =>
      _queryGetContentJustForYouManager.clear();
  void clearQueryGetContentJustForYouCacheKey(String? uniqueKey) =>
      _queryGetContentJustForYouManager.clearRequest(uniqueKey);

  final _queryContentsTopPremiumManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryContentsTopPremium({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryContentsTopPremiumManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryContentsTopPremiumCache() =>
      _queryContentsTopPremiumManager.clear();
  void clearQueryContentsTopPremiumCacheKey(String? uniqueKey) =>
      _queryContentsTopPremiumManager.clearRequest(uniqueKey);

  final _queryGetSpecialtiesMyFilesManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetSpecialtiesMyFiles({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetSpecialtiesMyFilesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetSpecialtiesMyFilesCache() =>
      _queryGetSpecialtiesMyFilesManager.clear();
  void clearQueryGetSpecialtiesMyFilesCacheKey(String? uniqueKey) =>
      _queryGetSpecialtiesMyFilesManager.clearRequest(uniqueKey);

  final _queryGetAccessUserManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetAccessUser({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetAccessUserManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetAccessUserCache() => _queryGetAccessUserManager.clear();
  void clearQueryGetAccessUserCacheKey(String? uniqueKey) =>
      _queryGetAccessUserManager.clearRequest(uniqueKey);

  final _queryGetContentQuestBookManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetContentQuestBook({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetContentQuestBookManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetContentQuestBookCache() =>
      _queryGetContentQuestBookManager.clear();
  void clearQueryGetContentQuestBookCacheKey(String? uniqueKey) =>
      _queryGetContentQuestBookManager.clearRequest(uniqueKey);

  final _queryGetBackWhereYouStoppedManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetBackWhereYouStopped({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetBackWhereYouStoppedManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetBackWhereYouStoppedCache() =>
      _queryGetBackWhereYouStoppedManager.clear();
  void clearQueryGetBackWhereYouStoppedCacheKey(String? uniqueKey) =>
      _queryGetBackWhereYouStoppedManager.clearRequest(uniqueKey);

  final _queryGetAuthorsManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> queryGetAuthors({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _queryGetAuthorsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearQueryGetAuthorsCache() => _queryGetAuthorsManager.clear();
  void clearQueryGetAuthorsCacheKey(String? uniqueKey) =>
      _queryGetAuthorsManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
