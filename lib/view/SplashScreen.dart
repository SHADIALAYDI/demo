import 'package:demo_app/view/Home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
class SplashScreenClass extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SplashScreen(

        seconds: 5,
        navigateAfterSeconds: Home(),
        image: new Image.asset('images/logo.png'),
        backgroundColor: Colors.grey,
        photoSize: 100.0,
        loaderColor: Colors.green
    );
  }
}
