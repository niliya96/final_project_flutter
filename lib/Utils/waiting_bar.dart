import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';

class WaitingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE,
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(LIGHT_GREEN),
        ),
      ),
    );
  }

}