import 'package:flutter/material.dart';
import 'package:scientie/screens/login_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => LoginPage(),
    },
    initialRoute: '/',
    title: '\$cientie',
  ));
}
