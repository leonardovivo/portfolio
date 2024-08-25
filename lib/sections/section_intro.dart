import 'package:flutter/material.dart';

class SectionIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Leonardo Vivo Guerreiro',
              style: TextStyle(
                fontFamily: 'Dancing Script',
                fontSize: 100,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Desenvolvedor Mobile',
              style: TextStyle(
                fontFamily: 'Cormorant Garamond',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
