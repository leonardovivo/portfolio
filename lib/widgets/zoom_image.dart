import 'package:flutter/material.dart';

class ZoomImage extends StatefulWidget {
  final String imagePath;
  final double height;

  const ZoomImage({required this.imagePath, required this.height, Key? key})
      : super(key: key);

  @override
  _ZoomImageState createState() => _ZoomImageState();
}

class _ZoomImageState extends State<ZoomImage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered ? 1.1 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: Image.asset(
          widget.imagePath,
          height: widget.height,
        ),
      ),
    );
  }
}
