import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portifolio_leonardo_vivo/widgets/svg_button.dart';
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
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgButton(
                      assetPath: 'assets/icons/linkedin.svg',
                      url: Uri.parse(
                          'https://www.linkedin.com/in/leonardo-vivo-guerreiro/'),
                      hoverColor: Colors.blue,
                    )
                        .animate()
                        .fadeIn(duration: 1.seconds)
                        .slide(begin: const Offset(0, 1)),
                    const SizedBox(width: 25),
                    SvgButton(
                      assetPath: 'assets/icons/github.svg',
                      url: Uri.parse('https://github.com/leonardovivo'),
                      hoverColor: const Color.fromARGB(255, 190, 184, 184),
                    )
                        .animate()
                        .fadeIn(duration: 1.seconds)
                        .slide(begin: const Offset(0, 1)),
                    const SizedBox(width: 25),
                    SvgButton(
                      assetPath: 'assets/icons/email.svg',
                      url: Uri.parse('mailto:leonardovivo3@gmail.com'),
                      hoverColor: Colors.red,
                    )
                        .animate()
                        .fadeIn(duration: 1.seconds)
                        .slide(begin: const Offset(0, 1)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
