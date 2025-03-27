import 'package:flutter/material.dart';

class ZoomEducationItem extends StatefulWidget {
  final IconData icon;
  final String skillName;
  final String description;
  final double height;
  final double width;

  const ZoomEducationItem({
    required this.icon,
    required this.skillName,
    required this.description,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  _ZoomableEducationItemState createState() => _ZoomableEducationItemState();
}

class _ZoomableEducationItemState extends State<ZoomEducationItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: Transform.scale(
          scale: _isHovered ? 1.1 : 1.0,
          alignment: Alignment.center,
          child: Container(
            height: widget.height,
            width: widget.width,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
              boxShadow: [
                BoxShadow(
                  color: _isHovered
                      ? const Color.fromARGB(255, 145, 0, 255)
                      : Colors.black,
                  blurRadius: _isHovered ? 12 : 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.icon, size: 40, color: Colors.white),
                const SizedBox(height: 10),
                SelectableText(
                  widget.skillName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                SelectableText(
                  widget.description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
