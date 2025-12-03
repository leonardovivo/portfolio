import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portfolio_leonardo_vivo/widgets/video_widget.dart';

class Meal4YouProject extends StatelessWidget {
  const Meal4YouProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Meal4You (em desenvolvimento...)'),
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
                      'Meal4You é um aplicativo que estou desenvolvendo com amigos para recomendações de refeições '
                      'personalizadas usando Machine Learning. O app oferece dois tipos de conta:\n\n'
                      '• Administradores de Restaurantes: podem cadastrar estabelecimentos, pratos, preços, ingredientes e muito mais.\n'
                      '• Clientes: recebem sugestões de refeições personalizadas com base em suas restrições alimentares e preferências.\n\n'
                      'Sou responsável pelo desenvolvimento do Frontend utilizando Flutter, enquanto meus colegas cuidam do Backend e da IA de recomendação. '
                      'O vídeo a seguir demonstra algumas funcionalidades da conta de Administrador de Restaurante. Em breve, traremos mais novidades para ambos os perfis!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SelectableText(
                      'Neste aplicativo estou usando:',
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
                      '• Consumo de endpoints do Backend',
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
                    const SelectableText(
                      '• Shared Preferences',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Firebase',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Entre outros',
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
                      url:
                          Uri.parse('https://github.com/TCC-Meal4You/frontend'),
                    ),
                    const SizedBox(height: 20),
                    const VideoWidget(videoPath: 'assets/videos/meal4You.mp4'),
                  ] else if (isTablet) ...[
                    const SelectableText(
                      'Meal4You é um aplicativo que estou desenvolvendo com amigos para recomendações de refeições '
                      'personalizadas usando Machine Learning. O app oferece dois tipos de conta:\n\n'
                      '• Administradores de Restaurantes: podem cadastrar estabelecimentos, pratos, preços, ingredientes e muito mais.\n'
                      '• Clientes: recebem sugestões de refeições personalizadas com base em suas restrições alimentares e preferências.\n\n'
                      'Sou responsável pelo desenvolvimento do Frontend utilizando Flutter, enquanto meus colegas cuidam do Backend e da IA de recomendação. '
                      'O vídeo a seguir demonstra algumas funcionalidades da conta de Administrador de Restaurante. Em breve, traremos mais novidades para ambos os perfis!'
                      '\n',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SelectableText(
                      'Neste aplicativo estou usando:',
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
                      '• Consumo de endpoints do Backend',
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
                    const SelectableText(
                      '• Shared Preferences para armazenamento local',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Firebase',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Entre outros',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    LinkButton(
                      text: 'Ver repositório Frontend da Organização no GitHub',
                      url:
                          Uri.parse('https://github.com/TCC-Meal4You/frontend'),
                    ),
                    const SizedBox(height: 20),
                    const VideoWidget(videoPath: 'assets/videos/meal4You.mp4'),
                  ] else ...[
                    const SelectableText(
                      ' Meal4You é um aplicativo que estou desenvolvendo com amigos para\n recomendações de refeições '
                      'personalizadas usando Machine Learning.\n O app oferece dois tipos de conta:\n\n'
                      '• Administradores de Restaurantes: podem cadastrar estabelecimentos,\n pratos, preços, ingredientes e muito mais.\n'
                      '• Clientes: recebem sugestões de refeições personalizadas com base\n em suas restrições alimentares e preferências.\n\n'
                      ' Sou responsável pelo desenvolvimento do Frontend utilizando Flutter,\n enquanto meus colegas cuidam do Backend e da IA de recomendação. '
                      'O vídeo a\n seguir demonstra algumas funcionalidades da conta de Administrador de\n Restaurante. Em breve, traremos mais novidades para ambos os perfis!'
                      '\n',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SelectableText(
                      'Neste aplicativo estou usando:',
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
                      '• Consumo de endpoints do Backend',
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
                    const SelectableText(
                      '• Shared Preferences para armazenamento local',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Firebase',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Entre outros',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    LinkButton(
                      text: 'Ver repositório Frontend da Organização no GitHub',
                      url:
                          Uri.parse('https://github.com/TCC-Meal4You/frontend'),
                    ),
                    const SizedBox(height: 50),
                    const VideoWidget(videoPath: 'assets/videos/meal4You.mp4'),
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
