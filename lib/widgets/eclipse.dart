import 'package:flutter/material.dart';
import 'package:scientie/style/style.dart';

class Eclipse extends StatelessWidget {
  final double diameter;
  const Eclipse({super.key, this.diameter = 200});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: diameter,
      width: MediaQuery.of(context).size.width,
      child: CustomPaint(
        painter: ShapesPainter(),
        child: Image.asset(
          'assets/images/Logo.png',
        ),
      ),
    );
  }
}

const double _kCurveHeight = 35;

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _kCurveHeight);
    p.relativeQuadraticBezierTo(
        size.width / 2, 2 * _kCurveHeight, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = AppStyle.mainColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
