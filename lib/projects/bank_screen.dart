import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portifolio_leonardo_vivo/screens/fullscreen_image.dart';
import 'package:portifolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portifolio_leonardo_vivo/widgets/zoom_image.dart';

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
              final imageHeight = isMobile ? 300.0 : 500.0;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isMobile) ...[
                    const Text(
                      'Esta é uma tela de banco estática que desenvolvi, contendo:'
                      'Um cartão com informações, números de renda e gastos,'
                      'seção de serviços rápidos (transferência e pausar cartão) e'
                      'também informações de transações.',
                      style: TextStyle(
                        fontFamily: 'Cormorant Garamond',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Neste aplicativo usei:',
                      style: TextStyle(
                        fontFamily: 'Cormorant Garamond',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '• Flutter',
                      style: TextStyle(
                        fontFamily: 'Cormorant Garamond',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      '• Dart',
                      style: TextStyle(
                        fontFamily: 'Cormorant Garamond',
                        fontSize: 18,
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
                          width: 150,
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
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Cormorant Garamond',
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        children: [
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
