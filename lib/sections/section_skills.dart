import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/widgets/bullet_point.dart';
import 'package:portifolio_leonardo_vivo/widgets/education_item.dart';

class SectionSkills extends StatelessWidget {
  const SectionSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BulletPoint(),
                const SizedBox(width: 10),
                Text(
                  'Hard Skills',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.7),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 150),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                EducationItem(
                  icon: Icons.code,
                  skillName: 'Flutter',
                  description: 'Desenvolvimento de aplicações para dispositivos móveis',
                  height: 200,
                  width: 250,
                ),
                EducationItem(
                  icon: Icons.language,
                  skillName: 'Dart',
                  description: 'Prática com a linguagem de programação do Flutter',
                  height: 200,
                  width: 250,
                ),
                EducationItem(
                  icon: Icons.build,
                  skillName: 'BLoC',
                  description: 'Gerenciamento de estado utilizando BLoC no Flutter',
                  height: 200,
                  width: 250,
                ),
                EducationItem(
                  icon: Icons.api,
                  skillName: 'API Rest',
                  description: 'Integração e consumo de APIs Rest',
                  height: 200,
                  width: 250,
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BulletPoint(),
                const SizedBox(width: 10),
                Text(
                  'Soft Skills',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.7),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 150),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                   EducationItem(
                  icon: Icons.school,
                  skillName: 'Aprendizagem Rápida',
                  description: 'Rapidez e facilidade no aprendizado',
                  height: 200,
                  width: 250,
                ),
                EducationItem(
                  icon: Icons.message,
                  skillName: 'Comunicação',
                  description: 'Habilidade em transmitir ideias e feedbacks.',
                  height: 200,
                  width: 250,
                ),
                EducationItem(
                  icon: Icons.group,
                  skillName: 'Trabalho em equipe',
                  description:
                      'Colaboração eficaz com outros membros da equipe',
                  height: 200,
                  width: 250,
                ),
                EducationItem(
                  icon: Icons.accessibility,
                  skillName: 'Adaptabilidade',
                  description:
                      'Capacidade de se adaptar a novas situações e desafios',
                  height: 200,
                  width: 250,
                ),
                EducationItem(
                  icon: Icons.lightbulb,
                  skillName: 'Criatividade',
                  description: 'Capacidade de encontrar soluções inovadoras',
                  height: 200,
                  width: 250,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}