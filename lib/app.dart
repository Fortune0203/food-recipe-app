import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe/routes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'food',
          themeMode: ThemeMode.system,
          // theme: ThemeData(
          //   useMaterial3: true,
          //   brightness: MaterialTheme.lightScheme().brightness,
          //   colorScheme: MaterialTheme.lightScheme(),
          //   // fontFamily: AppFonts.montserrat,
          //   // textTheme: textTheme.apply(
          //   //   bodyColor: MaterialTheme.lightScheme().onSurface,
          //   //   displayColor: MaterialTheme.lightScheme().onSurface,
          //   // ),
          //   scaffoldBackgroundColor: Colors.white,
          //   canvasColor: MaterialTheme.lightScheme().surface,
          // ),
          // darkTheme: ThemeData(
          //   useMaterial3: true,
          //   brightness: MaterialTheme.darkScheme().brightness,
          //   colorScheme: MaterialTheme.darkScheme(),
          //   // fontFamily: AppFonts.montserrat,
          //   // textTheme: textTheme.apply(
          //   //   bodyColor: MaterialTheme.darkScheme().onSurface,
          //   //   displayColor: MaterialTheme.darkScheme().onSurface,
          //   // ),
          //   scaffoldBackgroundColor: Colors.black,
          //   canvasColor: MaterialTheme.darkScheme().surface,
          // ),
          initialRoute: AppRoutes.bottomnav,
          routes: AppRoutes.routes,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: MediaQuery.of(context).textScaler.clamp(
                      minScaleFactor: 1.0, // Minimum scale factor allowed.
                      maxScaleFactor: 1.0, // Maximum scale factor allowed.
                    ),
              ),
              child: child!,
            );
          },
        );
      },
    );
  }
}
