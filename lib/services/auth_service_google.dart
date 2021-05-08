import 'package:firebase_auth/firebase_auth.dart';

class AuthServiceGoogle {
  final _auth = FirebaseAuth.instance;
  Future<AuthResult> signInWithCredential(AuthCredential credential) => _auth.signInWithCredential(credential);
  Future<void> logout() => _auth.signOut();
  Stream<FirebaseUser> get currentUser => _auth.onAuthStateChanged;
}