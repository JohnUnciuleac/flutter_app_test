import 'package:flutter/material.dart';
import 'package:flutter_app_test/screens/components/body.dart';
import 'package:flutter_app_test/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}