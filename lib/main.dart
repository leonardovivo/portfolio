import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/page/portifolio_page.dart';

void main() {
  runApp(const MeuPortifolio());
}

class MeuPortifolio extends StatelessWidget {
  const MeuPortifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio Leonardo Vivo',
      theme: ThemeData.dark().copyWith(
      ),
      home: const PortifolioPage(),
    );
  }
}