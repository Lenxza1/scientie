import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scientie/model/list_menu.dart';
import 'package:scientie/style/style.dart';
import 'package:scientie/widgets/menu_holder.dart';
import 'package:scientie/widgets/menu_info.dart';

class MenuBetawi extends StatefulWidget {
  const MenuBetawi({super.key});

  @override
  State<MenuBetawi> createState() => _MenuBetawiState();
}

class _MenuBetawiState extends State<MenuBetawi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.mainColor,
        centerTitle: true,
        title: Text(
          "Menu Betawi",
          style: GoogleFonts.arsenal(
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
            child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 12),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 16,
                    ),
                addRepaintBoundaries: false,
                itemCount: MenuModel.menuListBetawi.length,
                itemBuilder: (context, index) => KategoriMenuHolder(
                      imgPath: MenuModel.menuListBetawi[index].image,
                      foodName: MenuModel.menuListBetawi[index].name,
                      foodPrice: MenuModel.menuListBetawi[index].foodPrice,
                      desc: MenuModel.menuListBetawi[index].desc,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuInfo(
                                    title: MenuModel.menuListBetawi[index].name,
                                    imageAssetsPath:
                                        MenuModel.menuListBetawi[index].image,
                                    foodDesc:
                                        MenuModel.menuListBetawi[index].desc,
                                    context: context,
                                    index: index,
                                    noWa: MenuKelModel.menuKelList[index].noKel,
                                  ))),
                    )),
          ),
        )),
      ),
    );
  }
}

class MenuPopular extends StatefulWidget {
  const MenuPopular({super.key});

  @override
  State<MenuPopular> createState() => _MenuPopularState();
}

class _MenuPopularState extends State<MenuPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.mainColor,
        centerTitle: true,
        title: Text(
          "Menu Popular",
          style: GoogleFonts.arsenal(
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
            child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 12),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 16,
                    ),
                itemCount: MenuModel.menuListPopular.length,
                itemBuilder: (context, index) => KategoriMenuHolder(
                      imgPath: MenuModel.menuListPopular[index].image,
                      foodName: MenuModel.menuListPopular[index].name,
                      foodPrice: MenuModel.menuListPopular[index].foodPrice,
                      desc: MenuModel.menuListPopular[index].desc,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MenuInfo(
                                    title:
                                        MenuModel.menuListPopular[index].name,
                                    imageAssetsPath:
                                        MenuModel.menuListPopular[index].image,
                                    foodDesc:
                                        MenuModel.menuListPopular[index].desc,
                                    context: context,
                                    index: index,
                                    noWa: MenuKelModel.menuKelList[index].noKel,
                                  ))),
                    )),
          ),
        )),
      ),
    );
  }
}
