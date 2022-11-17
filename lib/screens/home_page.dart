import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scientie/model/list_menu.dart';
import 'package:scientie/style/style.dart';
import 'package:scientie/widgets/eclipse.dart';
import 'package:scientie/widgets/menu_holder.dart';
import 'package:scientie/widgets/menu_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Eclipse(diameter: 300),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Kategori",
                    style: GoogleFonts.arsenal(
                      textStyle: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: const ButtonStyle(),
                      onPressed: () {
                        Navigator.pushNamed(context, '/PopularFood');
                      },
                      child: Column(
                        children: [
                          const Icon(Icons.fastfood),
                          Text(
                            "Makanan Pilihan",
                            style: GoogleFonts.arsenal(),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/BetawiFood');
                      },
                      child: Column(
                        children: [
                          const Icon(Icons.fastfood),
                          Text(
                            "Makanan Betawi",
                            style: GoogleFonts.arsenal(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Menu Makanan",
                        style: GoogleFonts.arsenal(
                          textStyle: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                      color: AppStyle.greyedColor,
                      borderRadius: BorderRadius.circular(20),
                    )),
                    Container(
                        decoration: BoxDecoration(
                      color: AppStyle.greyedColor,
                      borderRadius: BorderRadius.circular(20),
                    )),
                  ],
                ),
                const SizedBox(height: 8),
                Center(
                  child: Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 3 / 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 12,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) => MenuHolder(
                          imgPath: MenuModel.menuListPopular[index].image,
                          foodName: MenuModel.menuListPopular[index].name,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuInfo(
                                        title: MenuModel
                                            .menuListPopular[index].name,
                                        imageAssetsPath: MenuModel
                                            .menuListPopular[index].image,
                                        foodDesc: MenuModel
                                            .menuListPopular[index].desc,
                                        context: context,
                                        index: index,
                                      )))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
