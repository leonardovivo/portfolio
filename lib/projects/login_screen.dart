import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portifolio_leonardo_vivo/screens/fullscreen_image.dart';
import 'package:portifolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portifolio_leonardo_vivo/widgets/zoom_image.dart';

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
      padding: const EdgeInsets.only(left: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Tela de Login e Registro'),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontFamily: 'Cormorant Garamond',
                fontSize: 25,
                color: Colors.white,
              ),
              children: [
                const TextSpan(
                  text: 'Telas de Login e Registro de usuário, com campos específicos de:\n'
                      'Nome/Username, E-mail, senha e confirmação de senha (com opção de senha oculta).\n'
                      'Também contém uma checkbox de "Lembrar de mim", um botão de "Esqueci a senha",\n'
                      'três botões com opções de Login e Registro diferentes (Facebook, Google e Apple)\n'
                      'e dois botões em formato de texto que perguntam se o usuário tem ou não uma conta,\n'
                      'que ao serem clicados, levam ele para a tela de Login ou Registro, dependendo\n'
                      'do botão que for apertado.\n'
                      '\n',
                ),
                const TextSpan(
                  text: 'Neste aplicativo usei: ',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: 'Flutter',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                  text: ' e ',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
                TextSpan(
                  text: 'Dart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                  text: '.',
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          LinkButton(
            text: 'Ver repositório no GitHub',
            url: Uri.parse('https://github.com/leonardovivo/account_interface'),
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
                        imagePath: '',
                      ),
                    ),
                  );
                },
                child: ZoomImage(
                  imagePath: imagePaths[index],
                  height: 500,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
