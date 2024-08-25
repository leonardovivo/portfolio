import 'package:flutter/material.dart';

class SectionAbout extends StatelessWidget {
  const SectionAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // child: Padding(
      // padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SOBRE MIM',
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Text(
                'Sou uma pessoa apaixonada por tecnologia e programação, por conta disso, sempre gostei de criar coisas novas e aprender cada vez mais sobre.\nAprendo rápido e com facilidade, além de ser proativo, esforçado e criativo. Extremamente focado e determinado em entregar o melhor resultado possível.\nSempre vou até o fim e nunca me arrependo de terminar o que comecei.',
                style: TextStyle(
                //  fontFamily: 'Cormorant Garamond',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ],
      ),
    );
  }
}
