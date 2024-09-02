import 'package:flutter/material.dart';

class SectionAbout extends StatelessWidget {
  const SectionAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600;

        double fontSizeTitle = isMobile ? 60 : 100;
        double fontSizeText = isMobile ? 16 : 25;
        double paddingLeft = isMobile ? 20 : 50;
        double paddingVertical = isMobile ? 50 : 100;

        return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: paddingLeft),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
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
                              color: Color.fromARGB(255, 145, 0, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: paddingVertical),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingLeft),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Apaixonado por tecnologia e programação, por conta disso, sempre gostei de criar coisas novas e aprender cada vez mais sobre,\n'
                        'principalmente o que envolve Desenvolvimento Mobile. Aprendo rápido e com facilidade, além de ser proativo, esforçado e criativo.\n'
                        'Extremamente focado e determinado em entregar o melhor resultado possível. Sempre que tiro meus projetos do papel, vou até o fim\n'
                        'e nunca me arrependo de terminar o que comecei.',
                        style: TextStyle(
                          fontFamily: 'Cormorant Garamond',
                          fontSize: fontSizeText,
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
