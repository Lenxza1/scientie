import 'package:flutter/material.dart';
import 'package:scientie/widgets/menu_holder.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
