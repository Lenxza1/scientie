import 'package:flutter/material.dart';
import 'package:scientie/screens/home_page.dart';
import 'package:scientie/screens/login_page.dart';
import 'package:scientie/screens/menu_page.dart';
import 'package:scientie/screens/food_genre_page.dart';
import 'package:scientie/screens/register_page.dart';
import 'package:scientie/screens/splash_screen.dart';
import 'package:scientie/widgets/bottomnav.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // routes: {
    //   '/': (context) => const SplashScreen(),
    //   '/Login': (context) => const LoginPage(),
    //   '/Register': (context) => const RegisterPage(),
    //   '/Home': (context) => const HomePage(),
    //   '/Menu': (context) => const MenuPage(),
    //   '/Nav': (context) => const BottomNav(),
    //   '/BetawiFood': (context) => const MenuBetawi(),
    //   '/PopularFood': (context) => const MenuPopular()
    // },
    // initialRoute: '/',
    title: '\$cientie',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case "/":
          return MaterialPageRoute(
            builder: (context) {
              return const SplashScreen();
            },
          );
        case "/login":
          return MaterialPageRoute(
            builder: (context) {
              return const LoginPage();
            },
          );
        case "/register":
          return MaterialPageRoute(
            builder: (context) {
              return const LoginPage();
            },
          );
        case "/Nav":
          return MaterialPageRoute(
            builder: (context) {
              return const BottomNav();
            },
          );
          case "/BetawiFood":
          return MaterialPageRoute(
            builder: (context) {
              return const MenuBetawi();
            },
          );
          case "/PopularFood":
          return MaterialPageRoute(
            builder: (context) {
              return const MenuPopular();
            },
          );
        default:
          return MaterialPageRoute(
            builder: (context) {
              return SplashScreen();
            },
          );
      }
    },
  ));
}
