import 'package:flutter/material.dart';
import 'package:food_recipe/features/authentication/SignUp/sign_up.dart';
import 'package:food_recipe/features/authentication/sign_in_page.dart';
import 'package:food_recipe/features/authentication/splashscreen.dart';
import 'package:food_recipe/features/home-screen/home_screen.dart';
import 'package:food_recipe/features/ingrident-screen/ingrident_screen.dart';
import 'package:food_recipe/features/review-screen/review_screen.dart';
import 'package:food_recipe/features/search-recipe/search_recipe.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreenPage(),
    signin: (context) => const SignInScreen(),
    signup: (context) => const SignupScreen(),
    homescreen: (context) => const HomeScreen(),
    searchRecipe: (context) => const SearchRecipe(),
    ingredientScreen: (context) => const IngredientScreen(),
    reviewScreen: (context) => const ReviewScreen(),
  };

  static String splash = '/';
  static String signup = '/signup';
  static String signin = '/signin';
  static String homescreen = '/homescreen';
  static String searchRecipe = '/search-recipe';
  static String ingredientScreen = '/ingridient-screen';
  static String reviewScreen = '/review-screen';
}
