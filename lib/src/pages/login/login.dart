import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suky/src/pages/home/home.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formLogin = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 138, 25, 214),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250.0), // Altura da AppBar
        child: AppBar(
          leading: Container(
            margin: const EdgeInsets.only(
                left: 16.0, top: 16.0), // Ajuste as margens conforme necessário
            child: CircleAvatar(
              backgroundColor:
                  Colors.black.withOpacity(0.1), // Fundo com opacidade
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          flexibleSpace: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/banner_login.png', // Caminho da imagem de fundo
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 16.0,
                bottom: 60.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Sorveteria',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'A melhor sorveteria da cidade',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Form(
        key: _formLogin,
        child: Container(
          height: MediaQuery.of(context).size.height - 250.0,
          padding: const EdgeInsets.all(25.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: SizedBox(
            child: ListView(
              children: [
                Text(
                  'Login',
                  style: GoogleFonts.sourceSans3(
                    textStyle: const TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                const CustomTextField(
                  hintText: 'admin@email.com',
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  borderColor: Color.fromARGB(69, 158, 158, 158),
                ),
                const SizedBox(height: 15.0),
                const CustomTextField(
                  hintText: '********',
                  icon: Icons.lock,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  borderColor: Color.fromARGB(69, 158, 158, 158),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      // Texto de esqueci minha senha
                      'Esqueceu a senha?',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 138, 25, 214),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                CustomButton(
                  text: 'Entrar',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                ),
                const SizedBox(height: 15.0),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'ou',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                CustomButton(
                  text: 'Google',
                  textColor: const Color.fromARGB(255, 117, 117, 117),
                  backgroundColor: Colors.white,
                  iconPath:
                      'assets/images/logo_google.png', // Caminho da logo do Google
                  onPressed: () {},
                  textWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
