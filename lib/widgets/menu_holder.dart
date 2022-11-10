import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          color: const Color.fromARGB(255, 71, 68, 68),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.imgPath,
              height: 75,
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    widget.foodName,
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    widget.foodPrice,
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    widget.desc,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
