import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Greenly2FirebaseUser {
  Greenly2FirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

Greenly2FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Greenly2FirebaseUser> greenly2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Greenly2FirebaseUser>(
            (user) => currentUser = Greenly2FirebaseUser(user));
