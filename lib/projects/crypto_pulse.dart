import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portfolio_leonardo_vivo/widgets/video_widget.dart';

class CryptoPulseProject extends StatelessWidget {
  const CryptoPulseProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Crypto Pulse'),
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
                    const Text(
                      'Crypto Pulse é um app que exibe dados sobre 9 das criptomoedas mais populares,'
                      'consumindo informações de uma API Rest. No vídeo a seguir, duas delas são usadas'
                      'como exemplo para manter a demonstração objetiva, mas o comportamento é o mesmo para todas.'
                      '\n',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Neste aplicativo usei:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '• Flutter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      '• Dart',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      '• Consumo de API Rest',
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
                          'https://github.com/leonardovivo/crypto_pulse'),
                    ),
                    const SizedBox(height: 20),
                    const VideoWidget(
                        videoPath: 'assets/videos/cryptoPulse.mp4'),
                  ] else if (isTablet) ...[
                    const Text(
                      'Crypto Pulse é um app que exibe dados sobre 9 das criptomoedas mais populares,'
                      'consumindo informações de uma API Rest. No vídeo a seguir, duas delas são usadas'
                      'como exemplo para manter a demonstração objetiva, mas o comportamento é o mesmo para todas.'
                      '\n',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Neste aplicativo usei:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '• Flutter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      '• Dart',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      '• Consumo de API Rest',
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
                          'https://github.com/leonardovivo/crypto_pulse'),
                    ),
                    const SizedBox(height: 20),
                    const VideoWidget(
                        videoPath: 'assets/videos/cryptoPulse.mp4'),
                  ] else ...[
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'Crypto Pulse é um app que exibe dados sobre 9 das criptomoedas mais\npopulares,'
                                ' consumindo informações de uma API Rest. No vídeo a seguir,\nduas delas são usadas'
                                ' como exemplo para manter essa demonstração\nobjetiva, mas o comportamento é o mesmo para todas.'
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
                          'https://github.com/leonardovivo/crypto_pulse'),
                    ),
                    const SizedBox(height: 50),
                    const VideoWidget(
                        videoPath: 'assets/videos/cryptoPulse.mp4'),
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
