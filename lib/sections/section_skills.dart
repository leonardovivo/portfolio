import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/widgets/bullet_point.dart';
import 'package:portfolio_leonardo_vivo/widgets/zoom_card.dart';

class SectionSkills extends StatelessWidget {
  const SectionSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 250),
              Padding(
                padding: EdgeInsets.only(left: isMobile ? 0 : 75),
                child: Row(
                  mainAxisAlignment: isMobile
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const BulletPoint(),
                    const SizedBox(width: 10),
                    SelectableText(
                      'Hard Skills',
                      style: TextStyle(
                        fontSize: isMobile ? 30 : 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: isMobile ? 17 : 75),
                child: Wrap(
                  spacing: isMobile ? 115 : 50,
                  runSpacing: 30,
                  children: [
                    ZoomEducationItem(
                      icon: Icons.language,
                      skillName: 'Flutter',
                      description:
                          'Desenvolvimento de aplicações para dispositivos móveis',
                      height: isMobile ? 260 : 200,
                      width: isMobile ? 175 : 250,
                    ),
                    ZoomEducationItem(
                      icon: Icons.code,
                      skillName: 'Dart',
                      description:
                          'Prática com a linguagem de programação do Flutter',
                      height: isMobile ? 260 : 200,
                      width: isMobile ? 175 : 250,
                    ),
                    ZoomEducationItem(
                      icon: Icons.build,
                      skillName: 'BLoC',
                      description:
                          'Gerenciamento de estado utilizando BLoC no Flutter',
                      height: isMobile ? 260 : 200,
                      width: isMobile ? 175 : 250,
                    ),
                    ZoomEducationItem(
                      icon: Icons.build,
                      skillName: 'Provider',
                      description:
                          'Gerenciamento de estado utilizando Provider no Flutter',
                      height: isMobile ? 260 : 200,
                      width: isMobile ? 175 : 250,
                    ),
                    isMobile
                        ? const Center(
                            child: ZoomEducationItem(
                              icon: Icons.api,
                              skillName: 'API Rest',
                              description: 'Integração e consumo de APIs Rest',
                              height: 200,
                              width: 350,
                            ),
                          )
                        : const ZoomEducationItem(
                            icon: Icons.api,
                            skillName: 'API Rest',
                            description: 'Integração e consumo de APIs Rest',
                            height: 200,
                            width: 250,
                          ),
                  ],
                ),
              ),
              const SizedBox(height: 150),
              Padding(
                padding: EdgeInsets.only(left: isMobile ? 0 : 75),
                child: Row(
                  mainAxisAlignment: isMobile
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const BulletPoint(),
                    const SizedBox(width: 10),
                    SelectableText(
                      'Soft Skills',
                      style: TextStyle(
                        fontSize: isMobile ? 30 : 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: isMobile ? 17 : 75),
                child: Wrap(
                  spacing: isMobile ? 115 : 50,
                  runSpacing: 30,
                  children: [
                    ZoomEducationItem(
                      icon: Icons.school,
                      skillName: 'Aprendizagem\n'
                          '      Rápida',
                      description: 'Rapidez e facilidade no aprendizado',
                      height: isMobile ? 260 : 200,
                      width: isMobile ? 175 : 250,
                    ),
                    ZoomEducationItem(
                      icon: Icons.message,
                      skillName: 'Comunicação',
                      description:
                          'Habilidade em transmitir ideias e feedbacks',
                      height: isMobile ? 260 : 200,
                      width: isMobile ? 175 : 250,
                    ),
                    ZoomEducationItem(
                      icon: Icons.group,
                      skillName: 'Trabalho em\n'
                          '     equipe',
                      description:
                          'Colaboração eficaz com outros membros da equipe',
                      height: isMobile ? 260 : 200,
                      width: isMobile ? 175 : 250,
                    ),
                    ZoomEducationItem(
                      icon: Icons.accessibility,
                      skillName: 'Adaptabilidade',
                      description:
                          'Capacidade de se adaptar a novas situações e desafios',
                      height: isMobile ? 260 : 200,
                      width: isMobile ? 175 : 250,
                    ),
                    isMobile
                        ? const Center(
                            child: ZoomEducationItem(
                              icon: Icons.lightbulb,
                              skillName: 'Criatividade',
                              description: 'Capacidade de encontrar soluções inovadoras',
                              height: 200,
                              width: 350,
                            ),
                        )
                    : const ZoomEducationItem(
                      icon: Icons.lightbulb,
                      skillName: 'Criatividade',
                      description:
                          'Capacidade de encontrar soluções inovadoras',
                      height: 200,
                      width: 250,
                    ),
                        
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
