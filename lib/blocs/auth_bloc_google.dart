import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/services/auth_service_google.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthBlocGoogle {
  final authService = AuthServiceGoogle();
  final googleSignin = GoogleSignIn(scopes: ['email']);
  int flag = 0;
  Stream<FirebaseUser> get currentUser => authService.currentUser;
  // login function
  loginGoogle() async {

    try {
      final GoogleSignInAccount googleUser = await googleSignin.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(  
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken
      );
      flag = 1;
      //Firebase Sign in
      final result = await authService.signInWithCredential(credential);

      print('${result.user.displayName}');

    } catch(error){
      print(error);
    }

  }
  logoutGoogle() {
    authService.logout();
    googleSignin.signOut();   
  }
}