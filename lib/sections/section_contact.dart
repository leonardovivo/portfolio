import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/widgets/contact_links.dart';

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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: SelectableText(
                              'Eu estou disponível para novas\n'
                              'oportunidades. Entre em contato\n'
                              'por algum desses links:',
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
                          contactLinks(isMobile: isMobile),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: isMobile ? 10 : 20),
                        child: isMobile
                            ? const SizedBox.shrink()
                            : SelectableText(
                                '2024 - Code by Leonardo Vivo Guerreiro with Flutter',
                                style: TextStyle(
                                  fontFamily: "Cormorant Garamond",
                                  fontSize: 18,
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
}
