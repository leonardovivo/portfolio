import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                        // ignore: deprecated_member_use
                        color: Colors.white.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: isMobile ? 0 : 75),
                child: isMobile
                    ? const Center(
                        child: Column(
                          children: [
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.language,
                              ),
                              skillName: 'Flutter',
                              description:
                                  'Desenvolvimento de aplicações para dispositivos móveis',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.code,
                              ),
                              skillName: 'Dart',
                              description:
                                  'Prática com a linguagem de programação do Flutter',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.build,
                              ),
                              skillName: 'BLoC',
                              description:
                                  'Gerenciamento de estado utilizando BLoC no Flutter',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.build,
                              ),
                              skillName: 'Provider',
                              description:
                                  'Gerenciamento de estado utilizando Provider no Flutter',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.api,
                              ),
                              skillName: 'API Rest',
                              description: 'Integração e consumo de APIs Rest',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: FaIcon(FontAwesomeIcons.fire),
                              skillName: 'Firebase',
                              description:
                                  'Utilização de Firebase em aplicativos Flutter',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.check_circle,
                              ),
                              skillName: 'Testes',
                              description:
                                  'Criação de Testes Unitários e de Widgets',
                              height: 190,
                              width: 280,
                            ),
                          ],
                        ),
                      )
                    : const Wrap(
                        spacing: 50,
                        runSpacing: 30,
                        children: [
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.language,
                            ),
                            skillName: 'Flutter',
                            description:
                                'Desenvolvimento de aplicações para dispositivos móveis',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.code,
                            ),
                            skillName: 'Dart',
                            description:
                                'Prática com a linguagem de programação do Flutter',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.build,
                            ),
                            skillName: 'BLoC',
                            description:
                                'Gerenciamento de estado utilizando BLoC no Flutter',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.build,
                            ),
                            skillName: 'Provider',
                            description:
                                'Gerenciamento de estado utilizando Provider no Flutter',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.api,
                            ),
                            skillName: 'API Rest',
                            description: 'Integração e consumo de APIs Rest',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: FaIcon(FontAwesomeIcons.fire),
                            skillName: 'Firebase',
                            description:
                                'Utilização de Firebase em aplicativos Flutter',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.check_circle,
                            ),
                            skillName: 'Testes',
                            description:
                                'Criação de Testes Unitários e de Widgets',
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
                        // ignore: deprecated_member_use
                        color: Colors.white.withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: isMobile ? 0 : 75),
                child: isMobile
                    ? const Center(
                        child: Column(
                          children: [
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.school,
                              ),
                              skillName: 'Aprendizagem\n      Rápida',
                              description:
                                  'Rapidez e facilidade no aprendizado',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.message,
                              ),
                              skillName: 'Comunicação',
                              description:
                                  'Habilidade em transmitir ideias e feedbacks',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.group,
                              ),
                              skillName: 'Trabalho em\n     equipe',
                              description:
                                  'Colaboração eficaz com outros membros da equipe',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.accessibility,
                              ),
                              skillName: 'Adaptabilidade',
                              description:
                                  'Capacidade de se adaptar a novas situações e desafios',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.lightbulb,
                              ),
                              skillName: 'Criatividade',
                              description:
                                  'Capacidade de encontrar soluções inovadoras',
                              height: 190,
                              width: 280,
                            ),
                            SizedBox(height: 30),
                            ZoomEducationItem(
                              icon: Icon(
                                Icons.search,
                              ),
                              skillName: 'Resolução de Problemas',
                              description:
                                  'Capacidade analítica para identificar e resolver problemas',
                              height: 190,
                              width: 280,
                            ),
                          ],
                        ),
                      )
                    : const Wrap(
                        spacing: 50,
                        runSpacing: 30,
                        children: [
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.school,
                            ),
                            skillName: 'Aprendizagem\n      Rápida',
                            description: 'Rapidez e facilidade no aprendizado',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.message,
                            ),
                            skillName: 'Comunicação',
                            description:
                                'Habilidade em transmitir ideias e feedbacks',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.group,
                            ),
                            skillName: 'Trabalho em\n     equipe',
                            description:
                                'Colaboração eficaz com outros membros da equipe',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.accessibility,
                            ),
                            skillName: 'Adaptabilidade',
                            description:
                                'Capacidade de se adaptar a novas situações e desafios',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.lightbulb,
                            ),
                            skillName: 'Criatividade',
                            description:
                                'Capacidade de encontrar soluções inovadoras',
                            height: 200,
                            width: 250,
                          ),
                          ZoomEducationItem(
                            icon: Icon(
                              Icons.search,
                            ),
                            skillName: 'Resolução de Problemas',
                            description:
                                'Capacidade analítica para identificar e resolver problemas',
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
