// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scientie/model/list_menu.dart';
import 'package:scientie/style/style.dart';
import 'package:scientie/widgets/menu_info.dart';

class MenuHolder extends StatefulWidget {
  final String imgPath;
  final String foodName;
  var onTap;
  MenuHolder(
      {super.key, required this.imgPath, required this.foodName, this.onTap});

  @override
  State<MenuHolder> createState() => _MenuHolderState();
}

class _MenuHolderState extends State<MenuHolder> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 29, 28, 28),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.imgPath,
              height: 75,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.foodName,
              style: GoogleFonts.arsenal(
                textStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class KategoriMenuHolder extends StatefulWidget {
  final String imgPath;
  final String foodName;
  final String foodPrice;
  final String desc;
  var onTap;
  KategoriMenuHolder(
      {super.key,
      required this.imgPath,
      required this.foodName,
      required this.foodPrice,
      required this.desc,
      this.onTap});

  @override
  State<KategoriMenuHolder> createState() => _KategoriMenuHolderState();
}

class _KategoriMenuHolderState extends State<KategoriMenuHolder> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 100,
        width: double.infinity,
        color: const Color.fromARGB(255, 29, 28, 28),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  scale: 3 / 4,
                  image: AssetImage(widget.imgPath),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SizedBox(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.foodName,
                      style: GoogleFonts.arsenal(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      widget.foodPrice,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.arsenal(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal)),
                    ),
                    Flexible(
                      child: Text(
                        widget.desc,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.arsenal(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.normal)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DaftarMenuHolder extends StatefulWidget {
  final String kel;
  final String foodName1;
  final String imgPath1;
  final String foodName2;
  final String imgPath2;
  int index;
  var onTap;
  DaftarMenuHolder({
    super.key,
    required this.kel,
    required this.foodName1,
    required this.imgPath1,
    required this.foodName2,
    required this.imgPath2,
    required this.index,
    this.onTap,
  });

  @override
  State<DaftarMenuHolder> createState() => _DaftarMenuHolderState();
}

class _DaftarMenuHolderState extends State<DaftarMenuHolder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.kel,
            style: GoogleFonts.arsenal(
                textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MenuInfo(
                              title:
                                  MenuModel.menuListBetawi[widget.index].name,
                              imageAssetsPath:
                                  MenuModel.menuListBetawi[widget.index].image,
                              foodDesc:
                                  MenuModel.menuListBetawi[widget.index].desc,
                              noWa:
                                  MenuKelModel.menuKelList[widget.index].noKel,
                              context: context,
                              index: widget.index))),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        decoration: const BoxDecoration(
                            color: AppStyle.greyedColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: Center(
                          child: Text(
                            "Makanan Betawi",
                            style: GoogleFonts.arsenal(
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 29, 28, 28),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  scale: 3 / 4,
                                  image: AssetImage(widget.imgPath1),
                                ),
                              ),
                            ),
                            const SizedBox(height: 1),
                            Text(
                              widget.foodName1,
                              style: GoogleFonts.arsenal(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MenuInfo(
                              title:
                                  MenuModel.menuListPopular[widget.index].name,
                              imageAssetsPath:
                                  MenuModel.menuListPopular[widget.index].image,
                              foodDesc:
                                  MenuModel.menuListPopular[widget.index].desc,
                              noWa:
                                  MenuKelModel.menuKelList[widget.index].noKel,
                              context: context,
                              index: widget.index))),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        decoration: const BoxDecoration(
                            color: AppStyle.greyedColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12))),
                        child: Center(
                          child: Text(
                            "Makanan Popular",
                            style: GoogleFonts.arsenal(
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 29, 28, 28),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  scale: 3 / 4,
                                  image: AssetImage(widget.imgPath2),
                                ),
                              ),
                            ),
                            const SizedBox(height: 1),
                            Text(
                              widget.foodName2,
                              style: GoogleFonts.arsenal(
                                textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
