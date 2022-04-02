import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HackoverflowFirebaseUser {
  HackoverflowFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

HackoverflowFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HackoverflowFirebaseUser> hackoverflowFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HackoverflowFirebaseUser>(
            (user) => currentUser = HackoverflowFirebaseUser(user));
