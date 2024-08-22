import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suky/src/components/custom_appbar.dart';

class EmDesenvolvimento extends StatefulWidget {
  const EmDesenvolvimento({super.key});

  @override
  State<EmDesenvolvimento> createState() => _EmDesenvolvimentoState();
}

class _EmDesenvolvimentoState extends State<EmDesenvolvimento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Juliana Silva',
        subtitle: 'Administradora',
        iconNotification: Icons.notifications_outlined,
        iconColor: const Color.fromARGB(255, 138, 25, 214),
        sizeIcon: 30,
        imagePerfil: Image.asset('assets/images/foto_perfil.png'),
        onMenuPressed: () {
          // Ação ao clicar no ícone de menu
        },
        onNotificationPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.construction_rounded,
              size: 150,
              color: Color.fromARGB(255, 185, 185, 185),
            ),
            Text('Em desenvolvimento!',
                style: GoogleFonts.sourceSans3(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 0, 31, 57),
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
      ),
    );
  }
}
