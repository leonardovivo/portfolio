import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portfolio_leonardo_vivo/screens/fullscreen_image.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portfolio_leonardo_vivo/widgets/zoom_image.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SkyPulseProject extends StatelessWidget {
  const SkyPulseProject({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePaths = [
      'assets/images/telaDeInicio.png',
      'assets/images/campoTexto.png',
      'assets/images/telaClima.png',
      'assets/images/telaClimaEmbaixo.png',
      'assets/images/telaErro.png',
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Sky Pulse'),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 600;
              final isTablet =
                  constraints.maxWidth >= 600 && constraints.maxWidth < 1024;
              final imageHeight = isMobile ? 300.0 : 500.0;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isMobile) ...[
                    const AutoSizeText(
                      'O Sky Pulse é um aplicativo que passa ao usuário informações climáticas da cidade que ele inserir. '
                      'Ele cobre inúmeras cidades ao redor do mundo. '
                      'Contém a sua tela inicial com o campo de texto onde o usuário colocará a cidade escolhida. '
                      'Em seguida, a tela exibe as informações climáticas da cidade buscada. '
                      'Pensando em uma forma agradável de informar um erro ao usuário, o Sky Pulse também conta com'
                      'uma tela de erro, explicando claramente os dois possíveis problemas que podem ter ocorrido.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                      minFontSize: 16,
                      maxFontSize: 16,
                      maxLines: 15,
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
                      '• BLoC',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Consumo de API Rest.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    LinkButton(
                      text: 'Ver repositório no GitHub',
                      url: Uri.parse(
                          'https://github.com/leonardovivo/sky_pulse'),
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
                  ] else if (isTablet) ...[
                    const SelectableText(
                      'O Sky Pulse é um aplicativo que passa ao usuário informações climáticas'
                      ' da cidade que ele inserir. Ele cobre inúmeras cidades ao redor do mundo.'
                      ' Contém a sua tela inicial com o campo de texto que o usuário colocará a'
                      ' cidade escolhida, em seguida a tela que lhe mostra as informações climáticas'
                      ' da cidade. Pensando em uma forma agradável de informar um erro ao usuário,'
                      ' o Sky Pulse também tem a sua tela de erro, informando ao usuário os dois possíveis erros.'
                      '\n',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SelectableText(
                      'Neste projeto usei:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const SelectableText(
                      '• Flutter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Dart',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• BLoC',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Consumo de API Rest.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    LinkButton(
                      text: 'Ver repositório no GitHub',
                      url: Uri.parse(
                          'https://github.com/leonardovivo/sky_pulse'),
                    ),
                    const SizedBox(height: 30),
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
                                'O Sky Pulse é um aplicativo que passa ao usuário informações climáticas\n'
                                'da cidade que ele inserir. Ele cobre inúmeras cidades ao redor do mundo.\n'
                                'Contém a sua tela inicial com o campo de texto que o usuário colocará a\n'
                                'cidade escolhida, em seguida a tela que lhe mostra as informações climáticas\n'
                                'da cidade. Pensando em uma forma agradável de informar um erro ao usuário,\n'
                                'o Sky Pulse também tem a sua tela de erro, informando ao usuário os dois possíveis erros.\n'
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
                            text: ', ',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: 'Dart',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ', ',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: 'BLoC',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' e ',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          TextSpan(
                            text: 'consumo de API Rest',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '.',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    LinkButton(
                      text: 'Ver repositório no GitHub',
                      url: Uri.parse(
                          'https://github.com/leonardovivo/sky_pulse'),
                    ),
                    const SizedBox(height: 30),
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
                  ]
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
