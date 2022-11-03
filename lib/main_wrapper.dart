import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scientie/screens/home_page.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: IndexedStack(
          index: _selectedIndex,
          children: const [
            HomePage(),
            // SearchScreen(),
            // MyListScreen(),
            // MapScreen(),
            // VoiceSearchScreen(),
          ],
        ),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  BottomNavigationBar bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xff2c3136),
      unselectedItemColor: const Color(0xff535c65),
      selectedItemColor: const Color(0xfffb531a),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: (index) {
        if (index != _selectedIndex) {
          setState(() {
            _selectedIndex = index;
          });
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.house),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.solidHeart),
          label: 'My List',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.locationPin),
          label: 'Location',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.microphoneLines),
          label: 'Mic',
        ),
      ],
    );
  }
}
