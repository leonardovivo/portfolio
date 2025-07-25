import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/widgets/cards_certificates.dart';

class SectionEducation extends StatelessWidget {
  const SectionEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;

          final bool isMobile = screenWidth < 600;
          final bool isTablet = screenWidth >= 600 && screenWidth <= 1024;
          final bool isMediumScreen = screenWidth > 1024 && screenWidth <= 1300;

          final bool showCertificateButton = !(isMobile || isTablet);

          final double paddingHorizontal = isMobile ? 60 : 70;
          final double fontSizeTitle = isMobile ? 60 : 100;
          final double cardWidth =
              isMobile || isTablet || isMediumScreen ? double.infinity : 535;
          final double cardHeight =
              (isMobile || isTablet || isMediumScreen) ? 230 : 235;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: isMobile ? 20 : 50, top: isMobile ? 200 : 350),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SelectableText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'FORMAÇÃO',
                              style: TextStyle(
                                fontSize: fontSizeTitle,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.1),
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                fontSize: fontSizeTitle,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 145, 0, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                child: isMobile || isMediumScreen
                    ? Column(
                        children: [
                          const SizedBox(height: 40),
                          SizedBox(
                            width: cardWidth,
                            child: CardsCertificates(
                              typeCertificate: 'Formação Flutter',
                              certificateName:
                                  'Desenvolva seu primeiro app com Flutter',
                              institution: 'Alura',
                              period: '96h - 2023',
                              height: cardHeight,
                              width: cardWidth,
                            ),
                          ),
                          const SizedBox(height: 40),
                          SizedBox(
                            width: cardWidth,
                            child: CardsCertificates(
                              typeCertificate: 'Formação Dart',
                              certificateName:
                                  'Crie projetos em Dart',
                              institution: 'Alura',
                              period: '55h - 2023',
                              height: cardHeight,
                              width: cardWidth,
                            ),
                          ),
                          const SizedBox(height: 40),
                          SizedBox(
                            width: cardWidth,
                            child: CardsCertificates(
                              typeCertificate: 'Tecnólogo',
                              certificateName:
                                  'ADS',
                              institution:
                                  'FATEC Ipiranga - Pastor Enéas Tognini',
                              period: '2023 - 2025',
                              height: cardHeight,
                              width: cardWidth,
                            ),
                          ),
                        ],
                      )
                    : isTablet
                        ? Column(
                            children: [
                              const SizedBox(height: 40),
                              SizedBox(
                                width: cardWidth,
                                child: CardsCertificates(
                                  typeCertificate: 'Formação Flutter',
                                  certificateName:
                                      'Desenvolva seu primeiro app com Flutter',
                                  institution: 'Alura',
                                  period: '96h - 2023',
                                  height: cardHeight,
                                  width: cardWidth,
                                ),
                              ),
                              const SizedBox(height: 40),
                              SizedBox(
                                width: cardWidth,
                                child: CardsCertificates(
                                  typeCertificate: 'Formação Dart',
                                  certificateName:
                                      'Crie projetos em Dart, a linguagem utilizada no Flutter',
                                  institution: 'Alura',
                                  period: '55h - 2023',
                                  height: cardHeight,
                                  width: cardWidth,
                                ),
                              ),
                              const SizedBox(height: 40),
                              SizedBox(
                                width: cardWidth,
                                child: CardsCertificates(
                                  typeCertificate: 'Tecnólogo',
                                  certificateName:
                                      'Análise e Desenvolvimento de Sistemas',
                                  institution:
                                      'FATEC Ipiranga - Pastor Enéas Tognini',
                                  period: '2023 - 2025',
                                  height: cardHeight,
                                  width: cardWidth,
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: cardWidth,
                                    child: CardsCertificates(
                                      typeCertificate: 'Formação Flutter',
                                      certificateName:
                                          'Desenvolva seu primeiro app com Flutter',
                                      institution: 'Alura',
                                      period: '96h - 2023',
                                      url:
                                          'https://cursos.alura.com.br/degree/certificate/627c472e-839c-47fa-8503-8ca988cabf03?lang=pt_BR',
                                      height: cardHeight,
                                      width: cardWidth,
                                      showButton: showCertificateButton,
                                    ),
                                  ),
                                  SizedBox(
                                    width: cardWidth,
                                    child: CardsCertificates(
                                      typeCertificate: 'Formação Dart',
                                      certificateName:
                                          'Crie projetos em Dart, a linguagem utilizada no Flutter',
                                      institution: 'Alura',
                                      period: '55h - 2023',
                                      url:
                                          'https://cursos.alura.com.br/degree/certificate/567057d1-8a78-4915-9b2e-7c3854f7e168?lang=pt_BR',
                                      height: cardHeight,
                                      width: cardWidth,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: cardWidth,
                                  child: CardsCertificates(
                                    typeCertificate: 'Tecnólogo',
                                    certificateName:
                                        'Análise e Desenvolvimento de Sistemas',
                                    institution:
                                        'FATEC Ipiranga - Pastor Enéas Tognini',
                                    period: '2023 - 2025',
                                    height: cardHeight,
                                    width: cardWidth,
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
