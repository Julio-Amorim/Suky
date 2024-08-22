import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextInputType keyboardType;
  final bool obscureText;
  final Color borderColor;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.keyboardType,
    this.obscureText = false,
    this.borderColor = Colors.transparent,
  });

  @override
  CustomTextFieldState createState() => CustomTextFieldState();
}

class CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      child: TextFormField(
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon,
            color: const Color.fromARGB(255, 138, 25, 214),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(
              color: widget.borderColor, // Usa a cor da borda fornecida
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(
              color: widget.borderColor, // Usa a cor da borda fornecida
              width: 3.0, // Aumenta a largura da borda quando focada
            ),
          ),
          filled: true, // Define o campo como preenchido
          fillColor: Colors.white, // Define a cor de fundo como branco
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        obscureText: widget.obscureText,
      ),
    );
  }
}
