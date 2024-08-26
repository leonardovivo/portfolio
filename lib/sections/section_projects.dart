import 'package:flutter/material.dart';

class SectionProjects extends StatelessWidget {
  const SectionProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 300),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PROJETOS',
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.only(left: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sky Pulse',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'O Sky Pulse é um aplicativo que passa ao usuário informações climáticas\nda cidade que ele inserir. Ele cobre inúmeras cidades ao redor do mundo.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
