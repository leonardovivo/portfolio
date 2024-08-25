import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/page/portifolio_page.dart';

void main() {
  runApp(const MeuPortifolio());
}

class MeuPortifolio extends StatelessWidget {
  const MeuPortifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Portfólio',
      theme: ThemeData.dark().copyWith(
      ),
      home: const PortifolioPage(),
    );
  }
}