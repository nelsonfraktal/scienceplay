import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  SciencePlayAppAuthUser? initialUser;
  SciencePlayAppAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(SciencePlayAppAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const WelcomeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const WelcomeWidget(),
          routes: [
            FFRoute(
              name: 'Welcome',
              path: 'welcome',
              builder: (context, params) => const WelcomeWidget(),
            ),
            FFRoute(
              name: 'Signup',
              path: 'signup',
              builder: (context, params) => const SignupWidget(),
            ),
            FFRoute(
              name: 'Login',
              path: 'login',
              builder: (context, params) => const LoginWidget(),
            ),
            FFRoute(
              name: 'Resetting-password',
              path: 'resettingPassword',
              builder: (context, params) => const ResettingPasswordWidget(),
            ),
            FFRoute(
              name: 'Resetting-password2',
              path: 'resettingPassword2',
              builder: (context, params) => ResettingPassword2Widget(
                email: params.getParam(
                  'email',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'Resetting-password3',
              path: 'resettingPassword3',
              builder: (context, params) => const ResettingPassword3Widget(),
            ),
            FFRoute(
              name: 'Onboarding_finish',
              path: 'onboardingFinish',
              builder: (context, params) => const OnboardingFinishWidget(),
            ),
            FFRoute(
              name: 'Tracks',
              path: 'tracks',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Tracks')
                  : const TracksWidget(),
            ),
            FFRoute(
              name: 'Personal_informations',
              path: 'personalInformations',
              builder: (context, params) => PersonalInformationsWidget(
                editar: params.getParam(
                  'editar',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: 'Content_preferences',
              path: 'contentPreferences',
              builder: (context, params) => const ContentPreferencesWidget(),
            ),
            FFRoute(
              name: 'Notifications',
              path: 'notifications',
              builder: (context, params) => const NotificationsWidget(),
            ),
            FFRoute(
              name: 'Security_preferences',
              path: 'securityPreferences',
              builder: (context, params) => const SecurityPreferencesWidget(),
            ),
            FFRoute(
              name: 'Privacy_and_data',
              path: 'privacyAndData',
              builder: (context, params) => const PrivacyAndDataWidget(),
            ),
            FFRoute(
              name: 'Explore',
              path: 'explore',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Explore')
                  : const ExploreWidget(),
            ),
            FFRoute(
              name: 'My_wallet',
              path: 'myWallet',
              builder: (context, params) => const MyWalletWidget(),
            ),
            FFRoute(
              name: 'Available_plans',
              path: 'availablePlans',
              builder: (context, params) => const AvailablePlansWidget(),
            ),
            FFRoute(
              name: 'Premium_professional',
              path: 'premiumProfessional',
              builder: (context, params) => const PremiumProfessionalWidget(),
            ),
            FFRoute(
              name: 'Premium_student',
              path: 'premiumStudent',
              builder: (context, params) => const PremiumStudentWidget(),
            ),
            FFRoute(
              name: 'Plan_approved',
              path: 'planApproved',
              builder: (context, params) => const PlanApprovedWidget(),
            ),
            FFRoute(
              name: 'Library',
              path: 'library',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'Library')
                  : const LibraryWidget(),
            ),
            FFRoute(
              name: 'My_achievements',
              path: 'myAchievements',
              builder: (context, params) => MyAchievementsWidget(
                tab: params.getParam(
                  'tab',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'For_you',
              path: 'forYou',
              builder: (context, params) => params.isEmpty
                  ? const NavBarPage(initialPage: 'For_you')
                  : const ForYouWidget(),
            ),
            FFRoute(
              name: 'Track',
              path: 'track',
              builder: (context, params) => TrackWidget(
                track: params.getParam(
                  'track',
                  ParamType.JSON,
                ),
              ),
            ),
            FFRoute(
              name: 'Inside_content',
              path: 'insideContent',
              builder: (context, params) => InsideContentWidget(
                content: params.getParam(
                  'content',
                  ParamType.JSON,
                ),
                typeContent: params.getParam<TypeContent>(
                  'typeContent',
                  ParamType.Enum,
                ),
              ),
            ),
            FFRoute(
              name: 'About_author',
              path: 'aboutAuthor',
              builder: (context, params) => AboutAuthorWidget(
                author: params.getParam(
                  'author',
                  ParamType.JSON,
                ),
              ),
            ),
            FFRoute(
              name: 'Heads_each_area',
              path: 'headsEachArea',
              builder: (context, params) => HeadsEachAreaWidget(
                authors: params.getParam<dynamic>(
                  'authors',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: 'Inside_file',
              path: 'insideFile',
              builder: (context, params) => InsideFileWidget(
                title: params.getParam(
                  'title',
                  ParamType.String,
                ),
                summary: params.getParam(
                  'summary',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'Inside_file_summary',
              path: 'insideFileSummary',
              builder: (context, params) => const InsideFileSummaryWidget(),
            ),
            FFRoute(
              name: 'Inside_audio',
              path: 'insideAudio',
              builder: (context, params) => InsideAudioWidget(
                audios: params.getParam<dynamic>(
                  'audios',
                  ParamType.JSON,
                  isList: true,
                ),
                specialties: params.getParam<dynamic>(
                  'specialties',
                  ParamType.JSON,
                  isList: true,
                ),
                indexSelecionado: params.getParam(
                  'indexSelecionado',
                  ParamType.int,
                ),
                numberAudios: params.getParam(
                  'numberAudios',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'TrackBuy',
              path: 'trackBuy',
              builder: (context, params) => TrackBuyWidget(
                track: params.getParam(
                  'track',
                  ParamType.JSON,
                ),
              ),
            ),
            FFRoute(
              name: 'Inside_my_files',
              path: 'insideMyFiles',
              builder: (context, params) => InsideMyFilesWidget(
                contents: params.getParam<dynamic>(
                  'contents',
                  ParamType.JSON,
                  isList: true,
                ),
                name: params.getParam(
                  'name',
                  ParamType.String,
                ),
                id: params.getParam(
                  'id',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'Profile',
              path: 'profile',
              builder: (context, params) => const ProfileWidget(),
            ),
            FFRoute(
              name: 'Inside_audio_simple',
              path: 'insideAudioSimple',
              requireAuth: true,
              builder: (context, params) => InsideAudioSimpleWidget(
                hasNext: params.getParam(
                  'hasNext',
                  ParamType.bool,
                ),
                summary: params.getParam(
                  'summary',
                  ParamType.String,
                ),
                about: params.getParam(
                  'about',
                  ParamType.String,
                ),
                audio: params.getParam(
                  'audio',
                  ParamType.String,
                ),
                writers: params.getParam<dynamic>(
                  'writers',
                  ParamType.JSON,
                  isList: true,
                ),
                specialties: params.getParam<dynamic>(
                  'specialties',
                  ParamType.JSON,
                  isList: true,
                ),
                id: params.getParam(
                  'id',
                  ParamType.String,
                ),
                title: params.getParam(
                  'title',
                  ParamType.String,
                ),
                journal: params.getParam(
                  'journal',
                  ParamType.String,
                ),
                coverImage: params.getParam(
                  'coverImage',
                  ParamType.String,
                ),
                rating: params.getParam(
                  'rating',
                  ParamType.double,
                ),
                year: params.getParam(
                  'year',
                  ParamType.String,
                ),
                favorited: params.getParam(
                  'favorited',
                  ParamType.bool,
                ),
                timeAudioSeconds: params.getParam(
                  'timeAudioSeconds',
                  ParamType.int,
                ),
                credits: params.getParam(
                  'credits',
                  ParamType.int,
                ),
                isFree: params.getParam(
                  'isFree',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: 'TrackArea',
              path: 'trackArea',
              builder: (context, params) => TrackAreaWidget(
                nameArea: params.getParam(
                  'nameArea',
                  ParamType.String,
                ),
                idArea: params.getParam(
                  'idArea',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'Onboarding_1_occupation',
              path: 'onboarding1Occupation',
              builder: (context, params) => const Onboarding1OccupationWidget(),
            ),
            FFRoute(
              name: 'Onboarding_2_area',
              path: 'onboarding2Area',
              builder: (context, params) => const Onboarding2AreaWidget(),
            ),
            FFRoute(
              name: 'Onboarding_3_level',
              path: 'onboarding3Level',
              builder: (context, params) => const Onboarding3LevelWidget(),
            ),
            FFRoute(
              name: 'Onboarding_4_goals',
              path: 'onboarding4Goals',
              builder: (context, params) => const Onboarding4GoalsWidget(),
            ),
            FFRoute(
              name: 'Onboarding_5_dedication',
              path: 'onboarding5Dedication',
              builder: (context, params) => const Onboarding5DedicationWidget(),
            ),
            FFRoute(
              name: 'Onboarding_6_content_preference',
              path: 'onboarding6ContentPreference',
              builder: (context, params) =>
                  const Onboarding6ContentPreferenceWidget(),
            ),
            FFRoute(
              name: 'teste_checkout',
              path: 'testeCheckout',
              builder: (context, params) => const TesteCheckoutWidget(),
            ),
            FFRoute(
              name: 'plan',
              path: 'plan',
              builder: (context, params) => const PlanWidget(),
            ),
            FFRoute(
              name: 'SearchExplore',
              path: 'searchExplore',
              builder: (context, params) => SearchExploreWidget(
                pesquisa: params.getParam(
                  'pesquisa',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'content_that_we_love',
              path: 'contentThatWeLove',
              builder: (context, params) => ContentThatWeLoveWidget(
                contents: params.getParam<dynamic>(
                  'contents',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: 'book_content_quests',
              path: 'bookContentQuests',
              builder: (context, params) => BookContentQuestsWidget(
                books: params.getParam<dynamic>(
                  'books',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: 'global_ranking',
              path: 'globalRanking',
              builder: (context, params) => GlobalRankingWidget(
                listGlobalRanking: params.getParam<dynamic>(
                  'listGlobalRanking',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: 'top_free_content',
              path: 'topFreeContent',
              builder: (context, params) => TopFreeContentWidget(
                content: params.getParam<dynamic>(
                  'content',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: 'top_premium_content',
              path: 'topPremiumContent',
              builder: (context, params) => TopPremiumContentWidget(
                contents: params.getParam<dynamic>(
                  'contents',
                  ParamType.JSON,
                  isList: true,
                ),
              ),
            ),
            FFRoute(
              name: 'inside_the_global_ranking',
              path: 'insideTheGlobalRanking',
              builder: (context, params) => InsideTheGlobalRankingWidget(
                topic: params.getParam(
                  'topic',
                  ParamType.JSON,
                ),
              ),
            ),
            FFRoute(
              name: 'All_Tracks',
              path: 'allTracks',
              builder: (context, params) => AllTracksWidget(
                tipo: params.getParam(
                  'tipo',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'all_tracks_tracks_area',
              path: 'allTracksTracksArea',
              builder: (context, params) => AllTracksTracksAreaWidget(
                tipo: params.getParam(
                  'tipo',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'all_tracks_inside_an_area',
              path: 'allTracksInsideAnArea',
              builder: (context, params) => AllTracksInsideAnAreaWidget(
                name: params.getParam(
                  'name',
                  ParamType.String,
                ),
                uid: params.getParam(
                  'uid',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'All_tracks_inside_an_area_inside_a_category',
              path: 'allTracksInsideAnAreaInsideACategory',
              builder: (context, params) =>
                  AllTracksInsideAnAreaInsideACategoryWidget(
                name: params.getParam(
                  'name',
                  ParamType.String,
                ),
                uid: params.getParam(
                  'uid',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'all_tracks_inside_a_group',
              path: 'allTracksInsideAGroup',
              builder: (context, params) => AllTracksInsideAGroupWidget(
                tipo: params.getParam(
                  'tipo',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'Content_quest',
              path: 'contentQuest',
              builder: (context, params) => ContentQuestWidget(
                book: params.getParam(
                  'book',
                  ParamType.JSON,
                ),
              ),
            ),
            FFRoute(
              name: 'Inside_content_quest_book',
              path: 'insideContentQuestBook',
              builder: (context, params) => InsideContentQuestBookWidget(
                book: params.getParam(
                  'book',
                  ParamType.JSON,
                ),
                idContentQuestBook: params.getParam(
                  'idContentQuestBook',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'Start',
              path: 'start',
              builder: (context, params) => const StartWidget(),
            ),
            FFRoute(
              name: 'Finish',
              path: 'finish',
              builder: (context, params) => const FinishWidget(),
            ),
            FFRoute(
              name: 'Question',
              path: 'question',
              builder: (context, params) => const QuestionWidget(),
            ),
            FFRoute(
              name: 'Inside_content_quest_track',
              path: 'insideContentQuestTrack',
              builder: (context, params) => InsideContentQuestTrackWidget(
                tipo: params.getParam(
                  'tipo',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: 'playerFF',
              path: 'playerFF',
              builder: (context, params) => const PlayerFFWidget(),
            ),
            FFRoute(
              name: 'Inside_content_buy',
              path: 'insideContentBuy',
              builder: (context, params) => InsideContentBuyWidget(
                content: params.getParam(
                  'content',
                  ParamType.JSON,
                ),
                typeContent: params.getParam<TypeContent>(
                  'typeContent',
                  ParamType.Enum,
                ),
              ),
            ),
            FFRoute(
              name: 'Redirect',
              path: 'redirect',
              requireAuth: true,
              builder: (context, params) => RedirectWidget(
                id: params.getParam(
                  'id',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: 'RedirectTrack',
              path: 'redirectTrack',
              requireAuth: true,
              builder: (context, params) => RedirectTrackWidget(
                id: params.getParam(
                  'id',
                  ParamType.String,
                ),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/welcome';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primary,
                  child: Center(
                    child: Image.asset(
                      'assets/images/science.png',
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
