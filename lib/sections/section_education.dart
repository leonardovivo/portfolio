import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/widgets/cards_certificates.dart';

class SectionEducation extends StatelessWidget {
  const SectionEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 400),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'FORMAÇÃO',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      const TextSpan(
                        text: '.',
                        style: TextStyle(
                          fontSize: 100,
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
          const SizedBox(height: 100),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Wrap(
                  spacing: 80,
                  runSpacing: 20,
                  children: [
                    CardsCertificates(
                      typeCertificate: 'Tecnólogo',
                      certificateName: 'Análise e Desenvolvimento de Sistemas',
                      institution: 'FATEC Ipiranga - Pastor Enéas Tognini',
                      period: '2023 - 2025',
                      height: 200,
                      width: 535,
                    ),
                    CardsCertificates(
                      typeCertificate: 'Formação Flutter',
                      certificateName:
                          'Desenvolva seu primeiro app com Flutter',
                      institution: 'Alura',
                      period: '96h - 2023',
                      height: 200,
                      width: 535,
                    ),
                    CardsCertificates(
                      typeCertificate: 'Formação Dart',
                      certificateName:
                          'Crie projetos em Dart, a linguagem utilizada no Flutter',
                      institution: 'Alura',
                      period: '55h - 2023',
                      height: 200,
                      width: 535,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
