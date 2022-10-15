import 'package:flutter/material.dart';
import 'package:scientie/screens/login_page.dart';
import 'package:scientie/screens/register_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const LoginPage(),
      '/Register': (context) => const RegisterPage(),
    },
    initialRoute: '/',
    title: '\$cientie',
  ));
}
