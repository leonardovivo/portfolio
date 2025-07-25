import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_text_button.dart';

Widget contactLinks({required bool isMobile}) {
  const iconSize = 25.0;

  if (isMobile) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.mail,
              color: Colors.white,
              size: iconSize,
            ),
            const SizedBox(width: 10),
            LinkTextButton(
              text: 'leonardovivo3@gmail.com',
              url: Uri(scheme: 'mailto', path: 'leonardovivo3@gmail.com'),
            ),
          ],
        ),
        const SizedBox(height: 11),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.phone,
              color: Colors.white,
              size: iconSize,
            ),
            const SizedBox(width: 10),
            LinkTextButton(
              text: '+55 11 94385-8097',
              url: Uri.parse(
                  'https://wa.me/5511943858097?text=Olá!%20Vim%20pelo%20seu%20portfólio'),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/github.png',
              width: iconSize,
              height: iconSize,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            LinkTextButton(
              text: 'GitHub',
              url: Uri.parse('https://github.com/leonardovivo'),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/linkedin.png',
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 10),
            LinkTextButton(
              text: 'LinkedIn',
              url: Uri.parse(
                  'https://www.linkedin.com/in/leonardovivoguerreiro/'),
            ),
          ],
        ),
      ],
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.mail,
              color: Colors.white,
              size: iconSize,
            ),
            const SizedBox(height: 20),
            const Icon(
              Icons.phone,
              color: Colors.white,
              size: iconSize,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/icons/github.png',
              width: iconSize,
              height: iconSize,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/icons/linkedin.png',
              width: 30,
              height: 30,
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinkTextButton(
              text: 'leonardovivo3@gmail.com',
              url: Uri(scheme: 'mailto', path: 'leonardovivo3@gmail.com'),
            ),
            const SizedBox(height: 11),
            LinkTextButton(
              text: '+55 11 94385-8097',
              url: Uri.parse(
                  'https://wa.me/5511943858097?text=Olá!%20Vim%20pelo%20seu%20portfólio'),
            ),
            const SizedBox(height: 14),
            LinkTextButton(
              text: 'GitHub',
              url: Uri.parse('https://github.com/leonardovivo'),
            ),
            const SizedBox(height: 14),
            LinkTextButton(
              text: 'LinkedIn',
              url: Uri.parse(
                  'https://www.linkedin.com/in/leonardovivoguerreiro/'),
            ),
          ],
        ),
      ],
    );
  }
}
