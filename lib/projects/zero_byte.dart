import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portfolio_leonardo_vivo/widgets/video_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ZeroByteProject extends StatelessWidget {
  const ZeroByteProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Zero Byte'),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 600;
              final isTablet =
                  constraints.maxWidth >= 600 && constraints.maxWidth < 1024;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isMobile) ...[
                    const AutoSizeText(
                      'Zero Byte é um app de e-commerce focado em tecnologia. '
                      'Oferece login seguro, cadastro e recuperação de senha por e-mail. '
                      'Na Home, os usuários podem explorar produtos com imagens, descrições e preços via API. '
                      'É possível ver detalhes, adicionar itens ao carrinho, editar ou remover produtos '
                      'e finalizar a compra de forma prática e intuitiva.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                      maxLines: 12,
                      minFontSize: 16,
                      maxFontSize: 16,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 20),
                    const SelectableText(
                      'Neste aplicativo usei:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SelectableText(
                      '• Flutter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Dart',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Consumo de API Rest',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Provider',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    LinkButton(
                      text: 'Ver repositório no GitHub',
                      url: Uri.parse(
                          'https://github.com/leonardovivo/zero_byte'),
                    ),
                    const SizedBox(height: 20),
                    const VideoWidget(videoPath: 'assets/videos/zeroByte.mp4'),
                  ] else if (isTablet) ...[
                    const SelectableText(
                      'Zero Byte é um app de e-commerce focado em tecnologia.'
                      ' Oferece login seguro, cadastro e recuperação de senha'
                      ' por e-mail. Na Home, os usuários podem explorar produtos'
                      ' com imagens, descrições e preços via API. É possível ver'
                      ' detalhes, adicionar itens ao carrinho, editar ou remover'
                      ' produtos e finalizar a compra de forma prática e intuitiva.'
                      '\n',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SelectableText(
                      'Neste aplicativo usei:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SelectableText(
                      '• Flutter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Dart',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Consumo de API Rest',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Provider',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    LinkButton(
                      text: 'Ver repositório no GitHub',
                      url: Uri.parse(
                          'https://github.com/leonardovivo/zero_byte'),
                    ),
                    const SizedBox(height: 20),
                    const VideoWidget(videoPath: 'assets/videos/zeroByte.mp4'),
                  ] else ...[
                    const SelectableText.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Zero Byte é um app de e-commerce focado em tecnologia.\n'
                                'Oferece login seguro, cadastro e recuperação de senha\n'
                                'por e-mail. Na Home, os usuários podem explorar produtos\n'
                                'com imagens, descrições e preços via API. É possível ver\n'
                                'detalhes, adicionar itens ao carrinho, editar ou remover\n'
                                'produtos e finalizar a compra de forma prática e intuitiva.\n'
                                '\n'
                                '\n',
                          ),
                          TextSpan(
                            text: 'Neste aplicativo usei: ',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: 'Flutter,',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' Dart,',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' Consumo de API Rest',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' e ',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: 'Provider',
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
                          'https://github.com/leonardovivo/zero_byte'),
                    ),
                    const SizedBox(height: 50),
                    const VideoWidget(videoPath: 'assets/videos/zeroByte.mp4'),
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
