import 'package:flutter/material.dart';
import 'package:food_recipe/features/authentication/SignUp/sign_up.dart';
import 'package:food_recipe/features/authentication/sign_in_page.dart';
import 'package:food_recipe/features/authentication/splashscreen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreenPage(),
  };

  static String splash = '/';
  static String signup = '/signup';
  static String signin = '/signin';
}
