import 'package:flutter/material.dart';
import 'package:scientie/screens/home_page.dart';
import 'package:scientie/screens/login_page.dart';
import 'package:scientie/screens/food_genre_page.dart';
import 'package:scientie/screens/register_page.dart';
import 'package:scientie/screens/splash_screen.dart';
import 'package:scientie/widgets/bottomnav.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const SplashScreen(),
      '/Login': (context) => const LoginPage(),
      '/Register': (context) => const RegisterPage(),
      '/Home': (context) => const HomePage(),
      '/Nav': (context) => const BottomNav(),
      '/BetawiFood': (context) => const MenuBetawi(),
      '/PopularFood': (context) => const MenuPopular()
    },
    initialRoute: '/',
    title: '\$cientie',
  ));
}
