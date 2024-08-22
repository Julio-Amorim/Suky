import 'package:flutter/material.dart';

class IconIconButton extends StatelessWidget {
  final VoidCallback onPressed;

  // Variáveis para personalização
  final double buttonSize;
  final Color iconColor;
  final IconData icon;
  final Color backgroundColor;
  final double iconSize;
  final BorderRadius borderRadius;

  const IconIconButton({
    super.key,
    required this.onPressed,
    this.buttonSize = 48.0,
    this.iconColor = Colors.white,
    this.icon = Icons.filter_list_outlined,
    this.backgroundColor = const Color.fromARGB(255, 138, 25, 214),
    this.iconSize = 24.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(10.0)),
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
      ),
      icon: Icon(icon, size: iconSize),
      color: iconColor,
      onPressed: onPressed,
      constraints: BoxConstraints(
        minWidth: buttonSize,
        minHeight: buttonSize,
      ),
    );
  }
}