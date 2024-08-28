import 'package:flutter/material.dart';
import 'package:portifolio_leonardo_vivo/controller/animated_controller.dart';
import 'package:portifolio_leonardo_vivo/widgets/link_button.dart';

class BankScreen extends StatelessWidget {
  const BankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AnimatedShaderMask(text: 'Banco'),
          const SizedBox(height: 20),
          const Text(
            'Esta é uma tela de banco estática que desenvolvi, contendo:\n'
            'Um cartão com informações, números de renda e gastos,\n'
            'seção de serviços rápidos (transferência e pausar cartão) e\n'
            'também informações de transações.',
            style: TextStyle(
              fontFamily: 'Cormorant Garamond',
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          LinkButton(
            text: 'Ver repositório no GitHub',
            url: Uri.parse('https://github.com/leonardovivo/bank-screen'),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              Image.asset(
                'assets/images/telaDeBanco.png',
                height: 500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
