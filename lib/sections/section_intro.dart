import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SectionIntro extends StatelessWidget {
  const SectionIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Leonardo Vivo Guerreiro',
              style: TextStyle(
                fontFamily: 'Dancing Script',
                fontSize: 100,
                color: Colors.white,
              ),
            )
            .animate()
            .fadeIn(duration: 1.seconds)
            .slide(begin: const Offset(0, 1)),

            const SizedBox(height: 10),

            const Text(
              'Desenvolvedor Mobile',
              style: TextStyle(
                fontFamily: 'Cormorant Garamond',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
            .animate()
            .fadeIn(duration: 1.seconds, delay: 0.5.seconds)
            .slide(begin: const Offset(0, 1)),
          ],
        ),
      ),
    );
  }
}
