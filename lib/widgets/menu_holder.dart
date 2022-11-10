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

class KategoriMenuHolder extends StatelessWidget {
  const KategoriMenuHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Container(
        height: 350,
        width: MediaQuery.of(context).size.width * 0.8,
        color: const Color.fromARGB(255, 29, 28, 28),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  scale: 2 / 3,
                  image: AssetImage('assets/images/test.jpg'),
                ),
              ),
            ),
            Column(
              children: [
                Text('Test'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
