import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/sections/section_about.dart';
import 'package:portifolio_leonardo_vivo/sections/section_intro.dart';
import 'package:portifolio_leonardo_vivo/sections/section_projects.dart';

class PortifolioPage extends StatelessWidget {
  const PortifolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SectionIntro(),
            SectionAbout(),
            SectionProjects(),
            // SectionSkills(),
            // SectionEducation(),
            // SectionContact(),
          ],
        ),
      ),
    );
  }
}
