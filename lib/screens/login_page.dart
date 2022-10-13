import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final Widget svg = SvgPicture.asset('assets/Street-Food-bro.svg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 112, 65, 100),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Image.asset('assets/images/login.png'),
          ),
          const SizedBox(height: 32),
          TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              hintStyle: GoogleFonts.arsenal(
                textStyle: const TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(131, 128, 128, 100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
