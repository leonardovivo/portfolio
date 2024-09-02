import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/widgets/cards_certificates.dart';

class SectionEducation extends StatelessWidget {
  const SectionEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 200),
              Padding(
                padding: EdgeInsets.only(left: isMobile ? 20 : 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'FORMAÇÃO',
                              style: TextStyle(
                                fontSize: isMobile ? 60 : 100,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.1),
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                fontSize: isMobile ? 60 : 100,
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
                padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 70),
                child: Wrap(
                  spacing: isMobile ? 10 : 80,
                  runSpacing: 20,
                  children: [
                    SizedBox(
                      width: isMobile ? double.infinity : 535,
                      child: CardsCertificates(
                        typeCertificate: 'Tecnólogo',
                        certificateName:
                            'Análise e Desenvolvimento de Sistemas',
                        institution: 'FATEC Ipiranga - Pastor Enéas Tognini',
                        period: '2023 - 2025',
                        height: isMobile ? 250 : 200,
                        width: isMobile ? double.infinity : 535,
                      ),
                    ),
                    SizedBox(
                      width: isMobile ? double.infinity : 535,
                      child: CardsCertificates(
                        typeCertificate: 'Formação Flutter',
                        certificateName:
                            'Desenvolva seu primeiro app com Flutter',
                        institution: 'Alura',
                        period: '96h - 2023',
                        height: isMobile ? 250 : 200,
                        width: isMobile ? double.infinity : 535,
                      ),
                    ),
                    SizedBox(
                      width: isMobile ? double.infinity : 535,
                      child: CardsCertificates(
                        typeCertificate: 'Formação Dart',
                        certificateName:
                            'Crie projetos em Dart, a linguagem utilizada no Flutter',
                        institution: 'Alura',
                        period: '55h - 2023',
                        height: isMobile ? 250 : 200,
                        width: isMobile ? double.infinity : 535,
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
