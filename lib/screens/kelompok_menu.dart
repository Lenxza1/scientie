import 'package:flutter/material.dart';
import 'package:scientie/model/list_menu.dart';
import 'package:scientie/widgets/menu_holder.dart';

class MenuKelompokPage extends StatefulWidget {
  const MenuKelompokPage({super.key});

  @override
  State<MenuKelompokPage> createState() => _MenuKelompokPageState();
}

class _MenuKelompokPageState extends State<MenuKelompokPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: MenuKelModel.menuKelList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 8,
                  crossAxisCount: 1),
              itemBuilder: (context, index) => DaftarMenuHolder(
                  kel: MenuKelModel.menuKelList[index].kel,
                  foodName1: MenuKelModel.menuKelList[index].name1,
                  imgPath1: MenuKelModel.menuKelList[index].image1,
                  foodName2: MenuKelModel.menuKelList[index].name2,
                  imgPath2: MenuKelModel.menuKelList[index].image2),
            ),
          ),
        ),
      ),
    );
  }
}
