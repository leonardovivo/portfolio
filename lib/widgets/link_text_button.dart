import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkTextButton extends StatelessWidget {
  final String text;
  final Uri url;

  const LinkTextButton({
    required this.text,
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Não foi possível abrir $url';
        }
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Cormorant Garamond',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
