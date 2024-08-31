import 'package:flutter/material.dart';

class FullScreenImage extends StatefulWidget {
  final List<String> imagePaths;
  final int initialIndex;

  const FullScreenImage({
    super.key,
    required this.imagePaths,
    this.initialIndex = 0,
  });

  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  void _nextImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.imagePaths.length;
    });
  }

  void _previousImage() {
    setState(() {
      currentIndex = (currentIndex - 1 + widget.imagePaths.length) %
          widget.imagePaths.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30), // Rounded corners
                border: Border.all(
                    color: Colors.grey.shade800,
                    width: 5), // White border to simulate phone frame
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30), // Match border radius
                child: Image.asset(
                  widget.imagePaths[currentIndex],
                  fit: BoxFit
                      .contain, // Adjust image to fit within the container
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  color: Colors.white, size: 40),
              onPressed: _previousImage,
            ),
          ),
          Positioned(
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.arrow_forward_ios,
                  color: Colors.white, size: 40),
              onPressed: _nextImage,
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 30),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
