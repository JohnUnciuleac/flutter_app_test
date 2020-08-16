import 'package:flutter/widgets.dart';
import 'package:CARing/screens/login/login_screen.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
