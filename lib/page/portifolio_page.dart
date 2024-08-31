import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/sections/section_about.dart';
import 'package:portifolio_leonardo_vivo/sections/section_contact.dart';
import 'package:portifolio_leonardo_vivo/sections/section_education.dart';
import 'package:portifolio_leonardo_vivo/sections/section_intro.dart';
import 'package:portifolio_leonardo_vivo/sections/section_projects.dart';
import 'package:portifolio_leonardo_vivo/sections/section_skills.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class PortifolioPage extends StatefulWidget {
  @override
  _PortifolioPageState createState() => _PortifolioPageState();
}

class _PortifolioPageState extends State<PortifolioPage> {
  final itemScrollController = ItemScrollController();
  final itemPositionsListener = ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () => itemScrollController.scrollTo(
              index: 0,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            child: const Text(
              'Voltar ao Início',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () => itemScrollController.scrollTo(
              index: 1,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            child: const Text(
              'Sobre Mim',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () => itemScrollController.scrollTo(
              index: 2,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            child: const Text(
              'Projetos',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () => itemScrollController.scrollTo(
              index: 3,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            child: const Text(
              'Formação',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () => itemScrollController.scrollTo(
              index: 4,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            child: const Text(
              'Habilidades',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () => itemScrollController.scrollTo(
              index: 5,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            child: const Text(
              'Contato',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 70),
        ],
      ),
      body: ScrollablePositionedList.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return SectionIntro(itemScrollController: itemScrollController);
            case 1:
              return const SectionAbout();
            case 2:
              return const SectionProjects();
            case 3:
              return const SectionEducation();
            case 4:
              return const SectionSkills();
            case 5:
              return const SectionContact();
            default:
              return SectionIntro(itemScrollController: itemScrollController);
          }
        },
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
      ),
    );
  }
}
