import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portfolio_leonardo_vivo/widgets/video_widget.dart';

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
                    const SelectableText(
                      'Zero Byte é uma loja virtual voltada para produtos de tecnologia.'
                      ' O aplicativo permite que os usuários explorem uma ampla gama de produtos,'
                      ' com detalhes como imagens, descrições e preços, todos obtidos de uma API.'
                      ' Na Home, é possível visualizar esses itens e acessar informações detalhadas'
                      ' sobre cada produto. O aplicativo possui uma tela de login e cadastro onde'
                      ' os usuários podem criar uma conta ou fazer login usando suas credenciais.'
                      ' O processo de autenticação é seguro e, caso o usuário esqueça a senha, ele'
                      ' pode recuperá-la ao fornecer o e-mail registrado, recebendo instruções para'
                      ' redefinir a senha. Para a experiência de compras, os usuários podem adicionar'
                      ' itens ao carrinho, revisar os produtos selecionados e finalizar a compra.'
                      ' Além disso, o carrinho é interativo, permitindo que o usuário adicione ou'
                      ' remova produtos conforme necessário antes de concluir a transação. Esse'
                      ' fluxo intuitivo facilita a navegação e torna a compra prática e eficiente.'
                      '\n',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                      ),
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
                      'Zero Byte é uma loja virtual voltada para produtos de tecnologia.'
                      ' O aplicativo permite que os usuários explorem uma ampla gama de produtos,'
                      ' com detalhes como imagens, descrições e preços, todos obtidos de uma API.'
                      ' Na Home, é possível visualizar esses itens e acessar informações detalhadas'
                      ' sobre cada produto. O aplicativo possui uma tela de login e cadastro onde'
                      ' os usuários podem criar uma conta ou fazer login usando suas credenciais.'
                      ' O processo de autenticação é seguro e, caso o usuário esqueça a senha, ele'
                      ' pode recuperá-la ao fornecer o e-mail registrado, recebendo instruções para'
                      ' redefinir a senha. Para a experiência de compras, os usuários podem adicionar'
                      ' itens ao carrinho, revisar os produtos selecionados e finalizar a compra.'
                      ' Além disso, o carrinho é interativo, permitindo que o usuário adicione ou'
                      ' remova produtos conforme necessário antes de concluir a transação. Esse'
                      ' fluxo intuitivo facilita a navegação e torna a compra prática e eficiente.'
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
                                'Zero Byte é uma loja virtual voltada para produtos de tecnologia.'
                                ' O aplicativo permite que os usuários explorem uma ampla gama de produtos,'
                                ' com detalhes como imagens, descrições e preços, todos obtidos de uma API.'
                                ' Na Home, é possível visualizar esses itens e acessar informações detalhadas'
                                ' sobre cada produto. O aplicativo possui uma tela de login e cadastro onde'
                                ' os usuários podem criar uma conta ou fazer login usando suas credenciais.'
                                ' O processo de autenticação é seguro e, caso o usuário esqueça a senha, ele'
                                ' pode recuperá-la ao fornecer o e-mail registrado, recebendo instruções para'
                                ' redefinir a senha. Para a experiência de compras, os usuários podem adicionar'
                                ' itens ao carrinho, revisar os produtos selecionados e finalizar a compra.'
                                ' Além disso, o carrinho é interativo, permitindo que o usuário adicione ou'
                                ' remova produtos conforme necessário antes de concluir a transação. Esse'
                                ' fluxo intuitivo facilita a navegação e torna a compra prática e eficiente.'
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
