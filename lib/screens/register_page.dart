import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scientie/style/style.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text.trim(), password: password.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
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
              // Email
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
                    hintText: 'Email',
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
                  onPressed: signUp,
                  child: const Text('Sign Up'),
                ),
              ),
              const SizedBox(height: 15),
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
                          context, '/Login', (route) => false);
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
      ),
    );
  }
}
