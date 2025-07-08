import 'package:flutter/material.dart';
import 'package:portfolio_leonardo_vivo/widgets/link_button.dart';

class CardsCertificates extends StatefulWidget {
  final String typeCertificate;
  final String certificateName;
  final String institution;
  final String period;
  final String? url;
  final double height;
  final double width;
  final bool showButton;

  const CardsCertificates({
    required this.typeCertificate,
    required this.certificateName,
    required this.institution,
    required this.period,
    this.url,
    required this.height,
    required this.width,
    this.showButton = true,
    super.key,
  });

  @override
  _CardsCertificatesState createState() => _CardsCertificatesState();
}

class _CardsCertificatesState extends State<CardsCertificates> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: Transform.scale(
          scale: _isHovered ? 1.1 : 1.0,
          child: Container(
            height: widget.height,
            width: widget.width,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Colors.white.withOpacity(0.3), width: 2),
              boxShadow: [
                BoxShadow(
                  color: _isHovered
                      ? const Color.fromARGB(255, 145, 0, 255)
                      : Colors.black,
                  blurRadius: _isHovered ? 12 : 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  widget.typeCertificate,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 30),
                SelectableText(
                  widget.certificateName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                SelectableText(
                  widget.institution,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SelectableText(
                      widget.period,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                    
                   if (widget.url != null && widget.showButton)
                      LinkButton(
                        text: 'Ver Certificado',
                        url: Uri.parse(
                          widget.url!,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
