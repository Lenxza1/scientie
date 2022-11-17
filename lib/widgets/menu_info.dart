import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scientie/style/style.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuInfo extends StatelessWidget {
  final String title;
  final String imageAssetsPath;
  final String foodDesc;
  final BuildContext context;
  final int index;
  final String foodPrice;
  const MenuInfo(
      {super.key,
      required this.title,
      required this.imageAssetsPath,
      required this.foodDesc,
      required this.context,
      required this.index,
      this.foodPrice = 'Rp 2.000,00'});

  whatsappButton() async {
    await launchUrl(Uri(
        scheme: 'https',
        host: 'wa.me',
        path: '6287875908732?text=Saya%20Pesan%20$title'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.mainColor,
        elevation: 0,
        title: Text(
          title,
          style: GoogleFonts.arsenal(
            textStyle:
                const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageAssetsPath),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Deskripsi Makanan",
                  style: GoogleFonts.arsenal(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                  foodDesc,
                  style: GoogleFonts.arsenal(
                      textStyle: const TextStyle(fontSize: 14)),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          var whatsapplink = Uri.parse(
              'whatsapp://send?phone=6287875908732&text=Saya%20Pesan%20$title');
          if (await canLaunchUrl(whatsapplink)) {
            await launchUrl(whatsapplink);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("WhatsApp belum di install di device ini"),
              ),
            );
          }
        },
        label: Text(
          "Pesan Sekarang",
          style: GoogleFonts.arsenal(
            textStyle: const TextStyle(fontSize: 12),
          ),
        ),
        icon: const Icon(Icons.whatsapp),
      ),
    );
  }
}
