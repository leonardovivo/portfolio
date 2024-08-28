import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portifolio_leonardo_vivo/widgets/link_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Tela de Login e Registro'),
          const SizedBox(height: 20),
          const Text(
            'Telas de Login e Registro de usuário, com campos específicos de:\n'
            'Nome/Username, E-mail, senha e confirmação de senha (com opção de senha oculta).\n'
            'Também contém uma checkbox de "Lembrar de mim", um botão de "Esqueci a senha",\n'
            'três botões com opções de Login e Registro diferentes (Facebook, Google e Apple)\n'
            'e dois botões em formato de texto que perguntam se o usuário tem ou não uma conta,\n'
            'que ao serem clicados, levam ele para a tela de Login ou Registro, dependendo\n'
            'do botão que for apertado.',
            style: TextStyle(
              fontFamily: 'Cormorant Garamond',
              fontSize: 25,
              color: Colors.white,
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
            children: [
              Image.asset(
                'assets/images/telaPrincipal.png',
                height: 500,
              ),
              Image.asset(
                'assets/images/telaLogin.png',
                height: 500,
              ),
              Image.asset(
                'assets/images/telaRegistro.png',
                height: 500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}