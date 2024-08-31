import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/widgets/link_text_button.dart';

class SectionContact extends StatelessWidget {
  const SectionContact({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 390),
          Container(
            width: double.infinity,
            height: 500,
            color: Colors.black,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 600),
                          child: Text(
                            'Eu estou disponível para novas\n'
                            'oportunidades. Entre em contato',
                            style: TextStyle(
                              fontFamily: "Cormorant Garamond",
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.mail,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                const SizedBox(width: 10),
                                LinkTextButton(
                                  text: 'leonardovivo3@gmail.com',
                                  url: Uri(
                                      scheme: 'mailto',
                                      path: 'leonardovivo3@gmail.com'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                const SizedBox(width: 10),
                                LinkTextButton(
                                  text: '+55 11 94385-8097',
                                  url: Uri(
                                      scheme: 'tel', path: '+5511943858097'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/github.png',
                                  width: 25,
                                  height: 25,
                                  color: Colors.white,
                                ),
                                const SizedBox(width: 10),
                                LinkTextButton(
                                  text: 'GitHub',
                                  url: Uri.parse(
                                      'https://github.com/leonardovivo'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/linkedin.png',
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(width: 10),
                                LinkTextButton(
                                  text: 'LinkedIn',
                                  url: Uri.parse(
                                      'https://www.linkedin.com/in/leonardo-vivo-guerreiro/'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      '2024 - Code by Leonardo Vivo',
                      style: TextStyle(
                        fontFamily: "Cormorant Garamond",
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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