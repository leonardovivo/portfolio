import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SvgButton extends StatefulWidget {
  final String assetPath;
  final Uri url;
  final Color hoverColor;

  const SvgButton({
    required this.assetPath,
    required this.url,
    required this.hoverColor,
    super.key,
  });

  @override
  _SvgButtonState createState() => _SvgButtonState();
}

class _SvgButtonState extends State<SvgButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          final uri = widget.url;
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          } else {
            throw 'Could not launch ${uri.toString()}';
          }
        },
        child: SvgPicture.asset(
          widget.assetPath,
          height: 50,
          width: 50,
          color: _isHovered ? widget.hoverColor : Colors.white,
        ),
      ),
    );
  }
}
