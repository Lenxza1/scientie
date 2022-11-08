import 'package:flutter/material.dart';
import 'package:scientie/model/list_menu.dart';
import 'package:scientie/widgets/menu_holder.dart';
import 'package:scientie/widgets/menu_info.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  var menuIndexGlobal;

  List<MenuModel> menuList = [
    MenuModel(name: 'name', image: '', type: 'Betawi'),
    MenuModel(name: 'name', image: '', type: 'Betawi'),
    MenuModel(name: 'name', image: '', type: 'Betawi'),
    MenuModel(name: 'name', image: '', type: 'Betawi'),
    MenuModel(name: 'name', image: '', type: 'Betawi'),
    MenuModel(name: 'name', image: '', type: 'Betawi'),
    MenuModel(name: 'name', image: '', type: 'Betawi'),
    MenuModel(name: 'name', image: '', type: 'Betawi'),
    MenuModel(name: 'name', image: '', type: 'Betawi'),
    MenuModel(name: 'name', image: '', type: 'Betawi'),
  ];

  _changePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MenuInfo(
            title: menuList[menuIndexGlobal].name,
            imageAssetsPath: 'assets/images/test.jpg',
            foodDesc: 'foodDesc'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Center(
            child: GridView.builder(
              itemCount: menuList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => MenuHolder(
                  imgPath: 'assets/images/test.jpg',
                  foodName: menuList[index].name),
            ),
          ),
        ),
      ),
    );
  }
}
