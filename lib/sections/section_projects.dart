import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/projects/bank_screen.dart';
import 'package:portfolio_leonardo_vivo/projects/crypto_pulse.dart';
import 'package:portfolio_leonardo_vivo/projects/sky_pulse.dart';
import 'package:portfolio_leonardo_vivo/projects/zero_byte.dart';

class SectionProjects extends StatelessWidget {
  const SectionProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 400),
            LayoutBuilder(
              builder: (context, constraints) {
                final isMobile = constraints.maxWidth < 600;

                return Padding(
                  padding: EdgeInsets.only(left: isMobile ? 10 : 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText.rich(
                         TextSpan(
                          children: [
                            TextSpan(
                              text: 'PROJETOS',
                              style: TextStyle(
                                fontSize: isMobile ? 60 : 100,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.1),
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                fontSize: isMobile ? 60 : 100,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 145, 0, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 100),
            const SkyPulseProject(),
            const SizedBox(height: 200),
            const ZeroByteProject(),
            const SizedBox(height: 200),
            const CryptoPulseProject(),
            const SizedBox(height: 200),
            const BankScreenProject(),
            const SizedBox(height: 20),
            const Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
