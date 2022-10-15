import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scientie/style/style.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            //Picture
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xFFff7041),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              height: 250,
              child: Image.asset('assets/images/register.png'),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(right: 255),
              child: Text(
                'Sign up',
                style: GoogleFonts.arsenal(
                  textStyle: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(right: 140),
              child: Text(
                'Mohon untuk mengisi form dibawah',
                style: GoogleFonts.arsenal(
                  textStyle: const TextStyle(
                      fontSize: 15, color: AppStyle.greyedColor),
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Nama Pengguna
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: GoogleFonts.arsenal(
                  textStyle: const TextStyle(fontSize: 16, height: 1.5),
                ),
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x80000000),
                    ),
                  ),
                  isCollapsed: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(12),
                  hintText: 'Nama Pengguna',
                  hintStyle: GoogleFonts.arsenal(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF838080),
                    ),
                  ),
                ),
              ),
            ),
            // Username
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: GoogleFonts.arsenal(
                  textStyle: const TextStyle(fontSize: 16, height: 1.5),
                ),
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x80000000),
                    ),
                  ),
                  isCollapsed: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(12),
                  hintText: 'Username',
                  hintStyle: GoogleFonts.arsenal(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF838080),
                    ),
                  ),
                ),
              ),
            ),
            // Password
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: TextField(
                obscureText: true,
                textAlignVertical: TextAlignVertical.center,
                style: GoogleFonts.arsenal(
                  textStyle: const TextStyle(fontSize: 16, height: 1.5),
                ),
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x80000000),
                    ),
                  ),
                  isCollapsed: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(12),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.arsenal(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF838080),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // Sign up Button
            SizedBox(
              width: MediaQuery.of(context).size.width - 55,
              child: ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(0, 45)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFFff7041),
                  ),
                  textStyle: MaterialStateProperty.all(
                    GoogleFonts.arsenal(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text('Sign Up'),
              ),
            ),
            const SizedBox(height: 15),
            // Divider
            Row(
              children: [
                const Expanded(
                  child: Divider(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Atau Sign up Dengan',
                  style: GoogleFonts.arsenal(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF888585),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(child: Divider())
              ],
            ),
            const SizedBox(height: 12),
            // Google Login Button
            SizedBox(
              width: MediaQuery.of(context).size.width - 80,
              child: OutlinedButton.icon(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                )),
                onPressed: () {},
                icon: Image.asset('assets/icons/Google.png'),
                label: Text(
                  'Sign up dengan Google',
                  style: GoogleFonts.arsenal(
                    textStyle:
                        const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ),
            // Facebook Login Button
            SizedBox(
              width: MediaQuery.of(context).size.width - 80,
              child: OutlinedButton.icon(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                )),
                onPressed: () {},
                icon: Image.asset('assets/icons/Facebook.png'),
                label: Text(
                  'Sign up dengan Facebook',
                  style: GoogleFonts.arsenal(
                    textStyle:
                        const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah Punya Akun? ',
                  style: GoogleFonts.arsenal(
                    textStyle: const TextStyle(fontSize: 15),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (route) => false);
                  },
                  child: Text(
                    ' Login',
                    style: GoogleFonts.arsenal(
                      textStyle: const TextStyle(
                          fontSize: 15, color: AppStyle.mainColor),
                    ),
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
