import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
              child: Column(
                children: [
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Kelompok 1",
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      fontSize: 16,
                    )),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                      MenuHolder(
                          imgPath: 'assets/images/test.jpg', foodName: 'test'),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
