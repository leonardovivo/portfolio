import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portfolio_leonardo_vivo/screens/fullscreen_image.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portfolio_leonardo_vivo/widgets/zoom_image.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BankScreenProject extends StatelessWidget {
  const BankScreenProject({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePaths = [
      'assets/images/telaDeBanco.png',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Banco'),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 600;
              final isTablet =
                  constraints.maxWidth >= 600 && constraints.maxWidth < 900;
              final imageHeight = isMobile
                  ? 300.0
                  : isTablet
                      ? 400.0
                      : 500.0;
              final fontSize = isMobile
                  ? 18.0
                  : isTablet
                      ? 20.0
                      : 20.0;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isMobile || isTablet) ...[
                    AutoSizeText(
                      'Esta é uma tela de banco\nque desenvolvi, contendo:\n\n'
                      '• Um cartão com informações\n'
                      '• Números de renda e gastos\n'
                      '• Seção de serviços rápidos\n'
                      '• Informações de transações recentes.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: fontSize,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                      minFontSize: 17,
                      maxFontSize: 17,
                      maxLines: 12,
                    ),
                    const SizedBox(height: 20),
                    SelectableText(
                      'Neste aplicativo usei:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: fontSize,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SelectableText(
                      '• Flutter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SelectableText(
                      '• Dart',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    LinkButton(
                      text: 'Ver repositório no GitHub',
                      url: Uri.parse(
                          'https://github.com/leonardovivo/bank-screen'),
                    ),
                    const SizedBox(height: 30),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: List.generate(imagePaths.length, (index) {
                        return SizedBox(
                          width: isMobile
                              ? 150
                              : isTablet
                                  ? 200
                                  : 250,
                          height: imageHeight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FullScreenImage(
                                    imagePaths: imagePaths,
                                    initialIndex: index,
                                  ),
                                ),
                              );
                            },
                            child: ZoomImage(
                              imagePath: imagePaths[index],
                              height: imageHeight,
                            ),
                          ),
                        );
                      }),
                    ),
                  ] else ...[
                    SelectableText.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: fontSize,
                          color: Colors.white,
                        ),
                        children: const [
                          TextSpan(
                            text:
                                'Esta é uma tela de banco estática que desenvolvi, contendo:\n'
                                'Um cartão com informações, números de renda e gastos,\n'
                                'seção de serviços rápidos (transferência e pausar cartão) e\n'
                                'também informações de transações.\n'
                                '\n',
                          ),
                          TextSpan(
                            text: 'Neste aplicativo usei: ',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: 'Flutter',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' e ',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: 'Dart',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '.',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    LinkButton(
                      text: 'Ver repositório no GitHub',
                      url: Uri.parse(
                          'https://github.com/leonardovivo/bank-screen'),
                    ),
                    const SizedBox(height: 50),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: List.generate(imagePaths.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FullScreenImage(
                                  imagePaths: imagePaths,
                                  initialIndex: index,
                                ),
                              ),
                            );
                          },
                          child: ZoomImage(
                            imagePath: imagePaths[index],
                            height: imageHeight,
                          ),
                        );
                      }),
                    ),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
