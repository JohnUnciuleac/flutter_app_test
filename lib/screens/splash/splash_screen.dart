import 'package:flutter/material.dart';
import 'package:flutter_app_test/screens/splash/components/body.dart';
import 'package:flutter_app_test/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splashScreen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF552586),
            Color(0xFF552586),
            Color(0xFF804FB3),
          ],
          stops: [0.3, 0.6, 0.9],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Body(),
      ),
    );
  }
}
