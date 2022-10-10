import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class GuardiaAPPFirebaseUser {
  GuardiaAPPFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

GuardiaAPPFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GuardiaAPPFirebaseUser> guardiaAPPFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GuardiaAPPFirebaseUser>(
      (user) {
        currentUser = GuardiaAPPFirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
