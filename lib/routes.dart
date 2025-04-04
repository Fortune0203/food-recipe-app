import 'package:flutter/material.dart';
import 'package:food_recipe/features/authentication/SignUp/sign_up.dart';


class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    signup: (context) => const SignupScreen(),
  };

  static String splash = '/';
  static String signup = '/signup';

}
