import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/sections/section_skills.dart';

class SectionEducation extends StatelessWidget {
  const SectionEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'FORMAÇÃO',
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
          const SectionSkills(),
        ],
      ),
    );
  }
}