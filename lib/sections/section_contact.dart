import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_text_button.dart';

class SectionContact extends StatelessWidget {
  const SectionContact({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          final isTablet =
              constraints.maxWidth >= 600 && constraints.maxWidth < 900;

          return Column(
            children: [
              const SizedBox(height: 390),
              Container(
                width: double.infinity,
                height: isMobile
                    ? 400
                    : isTablet
                        ? 450
                        : 500,
                color: Colors.black,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(isMobile ? 10 : 20),
                      child: isMobile
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Eu estou disponível para novas\n'
                                  'oportunidades. Entre em contato\n'
                                  'por algum desses links.',
                                  style: TextStyle(
                                    fontFamily: "Cormorant Garamond",
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                contactLinks(),
                              ],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    'Eu estou disponível para novas\n'
                                    'oportunidades. Entre em contato\n'
                                    'por algum desses links.',
                                    style: TextStyle(
                                      fontFamily: "Cormorant Garamond",
                                      fontSize: 23,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                contactLinks(),
                              ],
                            ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: isMobile ? 10 : 20),
                        child: Text(
                          '2024 - Code by Leonardo Vivo Guerreiro',
                          style: TextStyle(
                            fontFamily: "Cormorant Garamond",
                            fontSize: isMobile ? 16 : 18,
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  contactLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center, // Adicionei isso
          children: [
            const Icon(
              Icons.mail,
              color: Colors.white,
              size: 25,
            ),
            const SizedBox(height: 20),
            const Icon(
              Icons.phone,
              color: Colors.white,
              size: 25,
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/icons/github.png',
              width: 25,
              height: 25,
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
          crossAxisAlignment: CrossAxisAlignment.start, // Adicionei isso
          children: [
            LinkTextButton(
              text: 'leonardovivo3@gmail.com',
              url: Uri(scheme: 'mailto', path: 'leonardovivo3@gmail.com'),
            ),
            const SizedBox(height: 11),
            LinkTextButton(
              text: '+55 11 94385-8097',
              url: Uri(scheme: 'tel', path: '+5511943858097'),
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
                  'https://www.linkedin.com/in/leonardo-vivo-guerreiro/'),
            ),
          ],
        ),
      ],
    );
  }
}
