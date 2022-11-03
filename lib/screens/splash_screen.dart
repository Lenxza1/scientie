import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _playerController;
  var videoList = [
    'assets/videos/1.mp4',
    'assets/videos/2.mp4',
    'assets/videos/3.mp4',
    'assets/videos/4.mp4',
    'assets/videos/5.mp4',
    'assets/videos/6.mp4',
    'assets/videos/7.mp4',
    'assets/videos/8.mp4',
  ];
  String randomVideo() {
    var random = Random();
    return videoList[random.nextInt((videoList.length - 1))];
  }

  @override
  void initState() {
    super.initState();
    _playerController = VideoPlayerController.asset(randomVideo())
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() {
          _playerController.play();
        });
      });

    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushNamedAndRemoveUntil(
            context, '/Login', (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            _playerController.value.isPlaying
                ? SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: VideoPlayer(
                      _playerController,
                    ),
                  )
                : Container(),
            Container(
              alignment: Alignment.center,
              color: Colors.black.withOpacity(0.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const FlutterLogo(
                    size: 70,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 4, color: Colors.white)),
                    child: Text('\$cientie',
                        style: GoogleFonts.arsenal(
                          textStyle: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        )),
                  ),
                  Text('IPA 3 x RPL 2',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _playerController.dispose();
  }
}
