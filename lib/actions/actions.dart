import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future clearQueryCacheContent(BuildContext context) async {
  FFAppState().clearQueryContentsWeLoveCache();
  FFAppState().clearQueryGlobalRankingCache();
  FFAppState().clearQueryContentsTopFreeCache();
  FFAppState().clearQueryContentsTopPremiumCache();
  FFAppState().clearQueryMyFilesCache();
  FFAppState().clearQueryGetContentJustForYouCache();
  FFAppState().clearQueryGetSpecialtiesMyFilesCache();
  FFAppState().clearQueryGetAllContentsInMyFilesCache();
  FFAppState().clearQueryGetBackWhereYouStoppedCache();
}

Future clearQueryCacheTracks(BuildContext context) async {
  FFAppState().clearQueryGetMyTracksCache();
  FFAppState().clearQueryGetRecommendedTracksCache();
  FFAppState().clearQueryGetPurchasedTracksCache();
  FFAppState().clearQueryGetAllTrackInExploreCache();
  FFAppState().clearQueryAreaHorseCache();
}
