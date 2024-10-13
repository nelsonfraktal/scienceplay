import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class SciencePlayAppAuthUser {
  SciencePlayAppAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SciencePlayAppAuthUser> sciencePlayAppAuthUserSubject =
    BehaviorSubject.seeded(SciencePlayAppAuthUser(loggedIn: false));
Stream<SciencePlayAppAuthUser> sciencePlayAppAuthUserStream() =>
    sciencePlayAppAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
