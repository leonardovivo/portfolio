import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final Uri url;

  const LinkButton({
    required this.text,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Não foi possível abrir $url';
        }
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        elevation: 5,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 27),
      ).copyWith(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.grey;
            }
            return const Color.fromARGB(255, 48, 47, 47);
          },
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Cormorant Garamond',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
