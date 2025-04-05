import 'package:flutter/material.dart';
import 'package:food_recipe/features/authentication/SignUp/sign_up.dart';
import 'package:food_recipe/features/authentication/sign_in_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    signin: (context) => const SignInScreen(),
  };

  static String splash = '/';
  static String signup = '/signup';
  static String signin = '/signin';
}
