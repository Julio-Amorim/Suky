import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double borderRadius;
  final FontWeight textWeight;
  final String? iconPath; // Caminho do ícone

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color.fromARGB(255, 138, 25, 214),
    this.textColor = Colors.white,
    this.height = 65.0,
    this.borderRadius = 32.0,
    this.textWeight = FontWeight.w600,
    this.iconPath, // Inicialização do caminho do ícone
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: const BorderSide(
            color: Color.fromARGB(184, 158, 158, 158),
            width: 1.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPath != null) ...[
              Image.asset(
                iconPath!,
                height: 24.0, // Altura do ícone
                width: 24.0, // Largura do ícone
              ),
              const SizedBox(width: 8.0), // Espaçamento entre o ícone e o texto
            ],
            Text(
              text,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: textColor,
                  fontSize: 18.0,
                  fontWeight: textWeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
