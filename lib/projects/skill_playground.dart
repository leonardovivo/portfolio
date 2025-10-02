import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_button.dart';
import 'package:portfolio_leonardo_vivo/widgets/video_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SkillPlaygroundProject extends StatelessWidget {
  const SkillPlaygroundProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Skill Playground'),
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
                      'Skill Playground é um aplicativo desenvolvido para demonstrar, de forma prática e modular,'
                      'o domínio de recursos importantes do ecossistema Flutter. Cada funcionalidade - como'
                      'navegação, bloc, animações, performance, comunicação com código nativo, entre outras -'
                      'está organizada em uma tela própria, acessada por meio de cards interativos.',
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
                      '• BLoC',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• CustomPainter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Navigator 2.0',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Comunicação c/ código nativo',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Performance & Repaints',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Async Isolates',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• AnimationController',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• StreamBuilder c/ Erro',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Custom Slivers',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Dependency Injection',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Testes (Unitários/de Widgets)',
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
                          'https://github.com/leonardovivo/skill_playground'),
                    ),
                    const SizedBox(height: 20),
                    const VideoWidget(
                        videoPath: 'assets/videos/skillPlayground.mp4'),
                  ] else if (isTablet) ...[
                    const SelectableText(
                      'Skill Playground é um aplicativo desenvolvido para demonstrar, de forma prática e modular,'
                      'o domínio de recursos importantes do ecossistema Flutter. Cada funcionalidade - como'
                      'navegação, bloc, animações, performance, comunicação com código nativo, entre outras -'
                      'está organizada em uma tela própria, acessada por meio de cards interativos.'
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
                      '• BLoC',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• CustomPainter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Navigator 2.0',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Comunicação com código nativo',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Performance & Repaints',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Async Isolates',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• AnimationController',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• StreamBuilder c/ Erro',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Custom Slivers',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Dependency Injection',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Testes (Unitários/de Widgets)',
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
                          'https://github.com/leonardovivo/skill_playground'),
                    ),
                    const SizedBox(height: 20),
                    const VideoWidget(
                        videoPath: 'assets/videos/skillPlayground.mp4'),
                  ] else ...[
                    const SelectableText(
                      'Skill Playground é um aplicativo desenvolvido para demonstrar, de forma prática e modular,\n'
                      'o domínio de recursos importantes do ecossistema Flutter. Cada funcionalidade - como\n'
                      'navegação, bloc, animações, performance, comunicação com código nativo, entre outras -\n'
                      'está organizada em uma tela própria, acessada por meio de cards interativos.\n'
                      '\n'
                      '\n',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
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
                      '• BLoC',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• CustomPainter',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Navigator 2.0',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Comunicação com código nativo',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Performance & Repaints',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Async Isolates',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• AnimationController',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• StreamBuilder c/ Erro',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Custom Slivers',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Dependency Injection',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SelectableText(
                      '• Testes (Unitários/de Widgets)',
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
                          'https://github.com/leonardovivo/skill_playground'),
                    ),
                    const SizedBox(height: 50),
                    const VideoWidget(
                        videoPath: 'assets/videos/skillPlayground.mp4'),
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
