import 'dart:math' as math;

import 'package:dating_app/app/common/common.dart';
import 'package:flutter/material.dart';

class ImageSpinner extends StatefulWidget {
  const ImageSpinner({super.key});

  @override
  State<ImageSpinner> createState() => _ImageSpinnerState();
}

class _ImageSpinnerState extends State<ImageSpinner>
    with TickerProviderStateMixin {
  late AnimationController first;
  late Animation<double> firstAnimation;

  late AnimationController second;
  late Animation<double> secondAnimation;

  bool isAnimating = false;

  @override
  void initState() {
    super.initState();
    first = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
      reverseDuration: const Duration(milliseconds: 5000),
    );

    firstAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(first);

    second = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
      reverseDuration: const Duration(seconds: 3),
    );

    secondAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(second);
  }

  @override
  void dispose() {
    first.dispose();
    second.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        height: 0.8 * size.width + 50,
        width: 0.8 * size.width + 50,
        child: Stack(
          children: [
            Center(
              child: RotationTransition(
                turns: firstAnimation,
                child: SizedBox(
                  height: 0.8 * size.width,
                  width: 0.8 * size.width,
                  child: CustomPaint(
                    painter: DashedCirclePainter(),
                  ),
                ),
              ),
            ),
            Center(
              child: RotationTransition(
                turns: secondAnimation,
                child: SizedBox(
                  height: 0.5 * size.width,
                  width: 0.5 * size.width,
                  child: CustomPaint(
                    painter: DashedCirclePainter(
                      dashes: 15,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.6, -0.8),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white30,
                backgroundImage:
                    AssetImage(Assets.helper('people-with-smartphone')),
              ),
            ),
            Align(
              alignment: const Alignment(1, 0.2),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white30,
                backgroundImage:
                    AssetImage(Assets.helper('people-with-smartphone')),
              ),
            ),
            Align(
              alignment: const Alignment(-0.6, 0.8),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white30,
                backgroundImage:
                    AssetImage(Assets.helper('people-with-smartphone')),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white30,
                backgroundImage:
                    AssetImage(Assets.helper('people-with-smartphone')),
              ),
            ),
            Align(
              alignment: const Alignment(-0.6, 0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white30,
                backgroundImage: AssetImage(Assets.helper('people_talking')),
              ),
            ),
            Align(
              alignment: const Alignment(0.4, 0.45),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white30,
                backgroundImage: AssetImage(Assets.helper('people_talking')),
              ),
            ),
            Align(
              alignment: const Alignment(0.25, -0.55),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white30,
                backgroundImage: AssetImage(Assets.helper('people_talking')),
              ),
            ),
            Align(
              alignment: const Alignment(-0.4, -0.4),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white30,
                backgroundImage: AssetImage(Assets.helper('people_talking')),
              ),
            ),
            Align(
              alignment: const Alignment(-0.2, 0.55),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white30,
                backgroundImage: AssetImage(Assets.helper('people_talking')),
              ),
            ),
            Align(
              alignment: const Alignment(0.58, 0),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white30,
                backgroundImage: AssetImage(Assets.helper('people_talking')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  final int dashes;
  final Color color;
  final double gapSize;
  final double strokeWidth;

  DashedCirclePainter({
    this.dashes = 20,
    this.color = Colors.grey,
    this.gapSize = 5,
    this.strokeWidth = 2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double gap = math.pi / 180 * gapSize;
    final double singleAngle = (math.pi * 2) / dashes;

    for (int i = 0; i < dashes; i++) {
      final Paint paint = Paint()
        ..color = color
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke;

      canvas.drawArc(Offset.zero & size, gap + singleAngle * i,
          singleAngle - gap * 2, false, paint);
    }
  }

  @override
  bool shouldRepaint(DashedCirclePainter oldDelegate) {
    return dashes != oldDelegate.dashes || color != oldDelegate.color;
  }
}

extension RadianToDegree on num {
  double toDegree() {
    return this * math.pi / 180;
  }
}
