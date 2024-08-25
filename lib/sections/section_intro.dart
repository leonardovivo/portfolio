import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
            )
            .animate()
            .fadeIn(duration: 1.seconds)
            .slide(begin: Offset(0, 1)),

            SizedBox(height: 10),

            Text(
              'Desenvolvedor Mobile',
              style: TextStyle(
                fontFamily: 'Cormorant Garamond',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
            .animate()
            .fadeIn(duration: 1.seconds, delay: 0.5.seconds)
            .slide(begin: Offset(0, 1)),
          ],
        ),
      ),
    );
  }
}
