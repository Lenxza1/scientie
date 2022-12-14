import 'package:flutter/material.dart';
import 'package:scientie/screens/account_page.dart';
import 'package:scientie/screens/home_page.dart';
import 'package:scientie/screens/kelompok_menu.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  final pages = [
    const HomePage(),
    const MenuKelompokPage(),
    const AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => setState(() {
                  selectedIndex = value;
                }),
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: const IconThemeData(color: Color(0xFFFF7041)),
            selectedItemColor: const Color(0xFFFF7041),
            unselectedIconTheme: const IconThemeData(color: Color(0xFF838080)),
            unselectedItemColor: const Color(0xFF838080),
            elevation: 8,
            iconSize: 32,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group), label: "Kelompok"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_sharp), label: "Account"),
            ]));
  }
}
