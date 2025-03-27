import 'package:flutter/material.dart';

class SectionAbout extends StatelessWidget {
  const SectionAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;

        bool isMobile = screenWidth < 600;

        bool isIntermediate = screenWidth >= 800 && screenWidth < 1024;

        double fontSizeTitle =
            isMobile ? 50 : 90;
        double fontSizeText = isMobile ? 14 : 20;
        double paddingLeft =
            isMobile ? 10 : 40;
        double paddingVertical = isMobile ? 30 : 80;

        double adaptiveFontSizeText = isIntermediate ? 18 : fontSizeText;

        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: paddingLeft),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SelectableText.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'SOBRE MIM',
                          style: TextStyle(
                            fontSize: fontSizeTitle,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.1),
                          ),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            fontSize: isMobile ? fontSizeTitle : 100,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 145, 0, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: paddingVertical),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingLeft),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: SelectableText(
                        'Apaixonado por tecnologia e programação, por conta disso, sempre gostei de criar coisas novas e aprender cada vez mais sobre,'
                        ' principalmente o que envolve Desenvolvimento Mobile. Aprendo rápido e com facilidade, além de ser proativo, esforçado e criativo.'
                        ' Extremamente focado e determinado em entregar o melhor resultado possível. Sempre que tiro meus projetos do papel, vou até o fim'
                        ' e nunca me arrependo de terminar o que comecei.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: adaptiveFontSizeText,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: paddingVertical),
              const Divider(color: Colors.black),
            ],
          ),
        );
      },
    );
  }
}
