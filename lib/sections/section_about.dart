import 'package:flutter/material.dart';

class SectionAbout extends StatelessWidget {
  const SectionAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'SOBRE MIM',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      TextSpan(
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sou uma pessoa apaixonada por tecnologia e programação, por conta disso, sempre gostei de criar coisas novas e\naprender cada vez mais sobre. Aprendo rápido e com facilidade, além de ser proativo, esforçado e criativo.\nExtremamente focado e determinado em entregar o melhor resultado possível. Sempre que tiro meus projetos \ndo papel, vou até o fim e nunca me arrependo de terminar o que comecei.',
                style: TextStyle(
                  fontFamily: 'Cormorant Garamond',
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ],
      ),
    );
  }
}
