import 'package:CARing/styles.dart';
import 'package:flutter/material.dart';
import 'package:CARing/screens/splash/components/body.dart';
import 'package:CARing/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splashScreen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: gradientCARing,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Body(),
      ),
    );
  }
}
