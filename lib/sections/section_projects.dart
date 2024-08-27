import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portifolio_leonardo_vivo/widgets/link_button.dart';

class SectionProjects extends StatelessWidget {
  const SectionProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 300),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'PROJETOS',
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
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AnimatedShaderMask(text: 'Sky Pulse'),
                const SizedBox(height: 20),
                const Text(
                  'O Sky Pulse é um aplicativo que passa ao usuário informações climáticas\n'
                  'da cidade que ele inserir. Ele cobre inúmeras cidades ao redor do mundo.\n'
                  'Contém a sua tela inicial com o campo de texto que o usuário colocará a\n'
                  'cidade escolhida, e em seguida a tela que lhe mostra as informações climáticas\n'
                  'da cidade. Pensando em uma forma agradável de informar um erro ao usuário,\n'
                  'o Sky Pulse também tem a sua tela de erro, informando ao usuário os dois possíveis erros.',
                  style: TextStyle(
                    fontFamily: 'Cormorant Garamond',
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                LinkButton(
                  text: 'Repositório no GitHub',
                  url: Uri.parse('https://github.com/leonardovivo/sky_pulse'),
                ),
                const SizedBox(height: 50),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Image.asset(
                      'assets/images/telaInicial.png',
                      height: 500,
                    ),
                    Image.asset(
                      'assets/images/campoDeTexto.png',
                      height: 500,
                    ),
                    Image.asset(
                      'assets/images/telaDeClima.png',
                      height: 500,
                    ),
                    Image.asset(
                      'assets/images/telaDeClimaEmbaixo.png',
                      height: 500,
                    ),
                    Image.asset(
                      'assets/images/telaDeErro.png',
                      height: 500,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
