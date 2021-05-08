import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/services/auth_service_facebook.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

class AuthBlocFacebook {
  final authService = AuthService();
  final fb = FacebookLogin();
  String photo;
  int flag = 0;
  Stream<FirebaseUser> get currentUser => authService.currentUser;
  loginFacebook() async {
    print('Starting Facbook Login');

    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email
    ]);
    switch (res.status) {
      case FacebookLoginStatus.Success:
        print('It worked');
        flag = 1;
        //Get Token
        final FacebookAccessToken fbToken = res.accessToken;
        //convert to Auth Creden
        final AuthCredential credential =
            FacebookAuthProvider.getCredential(accessToken: fbToken.token);
        photo = fbToken.token;
        //User Credential to Sign in with Firebase
        final result = await authService.signInWithCredentail(credential);

        print('${result.user.displayName} is now logged in');

        break;
      case FacebookLoginStatus.Cancel:
        print('Ther user canceled the login');
        break;
      case FacebookLoginStatus.Error:
        print('There was an error');
        break;
    }
  }

  logut() {
    authService.logout();
  }
}
