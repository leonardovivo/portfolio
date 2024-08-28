import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/projects/bank_screen.dart';
import 'package:portifolio_leonardo_vivo/projects/login_screen.dart';
import 'package:portifolio_leonardo_vivo/projects/sky_pulse.dart';

class SectionProjects extends StatelessWidget {
  const SectionProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 300),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'PROJETOS',
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
          const SizedBox(height: 100),
          const SkyPulseProject(),
          const SizedBox(height: 100),
          const LoginScreen(),
          const SizedBox(height: 100),
          const BankScreen(),
        ],
      ),
    );
  }
}
