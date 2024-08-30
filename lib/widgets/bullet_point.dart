import 'package:flutter/material.dart';

class BulletPoint extends StatelessWidget {
  final Color color;
  final double size;

  const BulletPoint({
    super.key,
    this.color = const Color.fromARGB(255, 145, 0, 255),
    this.size = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
