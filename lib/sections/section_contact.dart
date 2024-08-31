import 'package:flutter/material.dart';

class SectionContact extends StatelessWidget {
  const SectionContact({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 270),
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
                            const Row(
                              children: [
                                Icon(
                                  Icons.mail,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'leonardovivo3@gmail.com',
                                  style: TextStyle(
                                    fontFamily: "Cormorant Garamond",
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            const Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '+55 11 94385-8097',
                                  style: TextStyle(
                                    fontFamily: "Cormorant Garamond",
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                const Text(
                                  'GitHub',
                                  style: TextStyle(
                                    fontFamily: "Cormorant Garamond",
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                const Text(
                                  'LinkedIn',
                                  style: TextStyle(
                                    fontFamily: "Cormorant Garamond",
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
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
