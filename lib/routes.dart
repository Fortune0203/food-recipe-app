import 'package:flutter/material.dart';
import 'package:food_recipe/features/authentication/SignUp/sign_up.dart';
import 'package:food_recipe/features/authentication/sign_in_page.dart';
import 'package:food_recipe/features/authentication/splashscreen.dart';
import 'package:food_recipe/features/search-recipe/search_recipe.dart';
import 'package:food_recipe/screens/home_screen.dart';
import 'package:food_recipe/widgets/buttomnav_bar.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreenPage(),
    signin: (context) => const SignInScreen(),
    signup: (context) => const SignupScreen(),
    homepage: (context) => const HomeScreen(),
    bottomnav: (context) => const BottomNavExample(),
    searchRecipe: (context) => const SearchRecipe(),
  };

  static String splash = '/';
  static String signup = '/signup';
  static String signin = '/signin';
  static String homepage = '/homepage';
  static String bottomnav = '/bottomnav';
  static String searchRecipe = '/search-recipe';
}
