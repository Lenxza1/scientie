import 'package:flutter/material.dart';
import 'package:scientie/screens/home_page.dart';
import 'package:scientie/screens/login_page.dart';
import 'package:scientie/screens/register_page.dart';
import 'package:scientie/screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const SplashScreen(),
      '/Login': (context) => const LoginPage(),
      '/Register': (context) => const RegisterPage(),
      '/Home': (context) => const HomePage(),
    },
    initialRoute: '/',
    title: '\$cientie',
  ));
}
