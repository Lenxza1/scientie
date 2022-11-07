import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                        "Menu Utama",
                        style: GoogleFonts.arsenal(
                          textStyle: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Selengkapnya",
                          style: GoogleFonts.arsenal(
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuHolder(
                        imgPath: 'assets/images/test.jpg',
                        foodName: 'test',
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuInfo(
                                    title: 'test ',
                                    imageAssetsPath: 'assets/images/test.jpg',
                                    foodDesc: 'test')))),
                    MenuHolder(
                        imgPath: 'assets/images/test.jpg', foodName: 'test'),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuHolder(
                        imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    MenuHolder(
                        imgPath: 'assets/images/test.jpg', foodName: 'test'),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MenuHolder(
                        imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    MenuHolder(
                        imgPath: 'assets/images/test.jpg', foodName: 'test'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
