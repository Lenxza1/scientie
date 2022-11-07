import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scientie/style/style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: screenHeight,
        child: SafeArea(
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
                height: 300,
                child: Image.asset('assets/images/login.png'),
              ),
              const SizedBox(height: 32),
              // Username
              SizedBox(
                width: MediaQuery.of(context).size.width - 34,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  style: GoogleFonts.arsenal(
                    textStyle: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  decoration: InputDecoration(
                    isCollapsed: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    fillColor: const Color(0xFFD9D9D9),
                    filled: true,
                    contentPadding: const EdgeInsets.all(8),
                    hintText: 'Username',
                    hintStyle: GoogleFonts.arsenal(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(131, 128, 128, 100),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              // Password
              SizedBox(
                width: MediaQuery.of(context).size.width - 34,
                child: TextField(
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.center,
                  style: GoogleFonts.arsenal(
                    textStyle: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  decoration: InputDecoration(
                    isCollapsed: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    fillColor: const Color(0xFFD9D9D9),
                    filled: true,
                    contentPadding: const EdgeInsets.all(8),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.arsenal(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(131, 128, 128, 100),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              // Login Button
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
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/Nav', (route) => false);
                  },
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 24),
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
                    'Atau Login Dengan',
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
                    'Login dengan Google',
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
                    'Login dengan Facebook',
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
                    'Belum Punya Akun? ',
                    style: GoogleFonts.arsenal(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/Register');
                    },
                    child: Text(
                      ' Buat Akun',
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
      ),
    );
  }
}
