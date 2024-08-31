import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SectionIntro extends StatelessWidget {
  final ItemScrollController itemScrollController;

  const SectionIntro({super.key, required this.itemScrollController});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
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
        ),
      ],
    );
  }
}
