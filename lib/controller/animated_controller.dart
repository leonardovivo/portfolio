import 'package:flutter/material.dart';

class AnimatedShaderMask extends StatefulWidget {
  final String text;

  const AnimatedShaderMask({super.key, required this.text});

  @override
  _AnimatedShaderMaskState createState() => _AnimatedShaderMaskState();
}

class _AnimatedShaderMaskState extends State<AnimatedShaderMask>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: const [
                Color.fromARGB(255, 119, 0, 255),
                Colors.blue,
                Colors.greenAccent,
              ],
              stops: const [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.mirror,
              transform: GradientRotation(_controller.value * 2.0 * 3.14),
            ).createShader(bounds);
          },
          child: Text(
            widget.text,
            style: const TextStyle(
              fontFamily: 'Cormorant Garamond',
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
