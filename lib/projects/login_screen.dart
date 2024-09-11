import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portfolio_leonardo_vivo/screens/fullscreen_image.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portfolio_leonardo_vivo/widgets/zoom_image.dart';

class LoginScreenProject extends StatelessWidget {
  const LoginScreenProject({super.key});

  @override
  Widget build(BuildContext context) {
    final imagePaths = [
      'assets/images/telaPrincipal.png',
      'assets/images/telaLogin.png',
      'assets/images/telaRegistro.png',
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Tela de Login e Registro'),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 600;
              final isTablet =
                  constraints.maxWidth >= 600 && constraints.maxWidth < 1024;
              final imageHeight = isMobile
                  ? 300.0
                  : isTablet
                      ? 400.0
                      : 500.0;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isMobile) ...[
                    const Text(
                      'Telas de Login e Registro de usuário, com campos específicos de:'
                      ' Nome/Username, E-mail, senha e confirmação de senha (com opção de senha oculta).'
                      ' Também contém uma checkbox de "Lembrar de mim", um botão de "Esqueci a senha",'
                      ' três botões com opções de Login e Registro diferentes (Facebook, Google e Apple)'
                      ' e dois botões em formato de texto que perguntam se o usuário tem ou não uma conta,'
                      ' que ao serem clicados, levam ele para a tela de Login ou Registro, dependendo'
                      ' do botão que for apertado.'
                      '\n',
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
                          'https://github.com/leonardovivo/account_interface'),
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
                    const Text(
                      'Telas de Login e Registro de usuário, com campos específicos de:'
                      ' Nome/Username, E-mail, senha e confirmação de senha (com opção de senha oculta).'
                      ' Também contém uma checkbox de "Lembrar de mim", um botão de "Esqueci a senha",'
                      ' três botões com opções de Login e Registro diferentes (Facebook, Google e Apple)'
                      ' e dois botões em formato de texto que perguntam se o usuário tem ou não uma conta,'
                      ' que ao serem clicados, levam ele para a tela de Login ou Registro, dependendo'
                      ' do botão que for apertado.'
                      '\n',
                      style: TextStyle(
                        fontFamily: 'Cormorant Garamond',
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Neste aplicativo usei:',
                      style: TextStyle(
                        fontFamily: 'Cormorant Garamond',
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '• Flutter',
                      style: TextStyle(
                        fontFamily: 'Cormorant Garamond',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      '• Dart',
                      style: TextStyle(
                        fontFamily: 'Cormorant Garamond',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    LinkButton(
                      text: 'Ver repositório no GitHub',
                      url: Uri.parse(
                          'https://github.com/leonardovivo/account_interface'),
                    ),
                    const SizedBox(height: 30),
                    Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: List.generate(imagePaths.length, (index) {
                        return SizedBox(
                          width: 200,
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
                                'Telas de Login e Registro de usuário, com campos específicos de:\n'
                                'Nome/Username, E-mail, senha e confirmação de senha (com opção de senha oculta).\n'
                                'Também contém uma checkbox de "Lembrar de mim", um botão de "Esqueci a senha",\n'
                                'três botões com opções de Login e Registro diferentes (Facebook, Google e Apple)\n'
                                'e dois botões em formato de texto que perguntam se o usuário tem ou não uma conta,\n'
                                'que ao serem clicados, levam ele para a tela de Login ou Registro, dependendo\n'
                                'do botão que for apertado.\n'
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
                    const SizedBox(height: 50),
                    LinkButton(
                      text: 'Ver repositório no GitHub',
                      url: Uri.parse(
                          'https://github.com/leonardovivo/account_interface'),
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
                  ],
                ],
              );
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
