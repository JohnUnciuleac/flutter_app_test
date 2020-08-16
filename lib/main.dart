import 'package:flutter/material.dart';
import 'package:CARing/routes.dart';
import 'package:CARing/screens/splash/splash_screen.dart';

import 'screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
