import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final IconData iconNotification;
  final Color iconColor;
  final double sizeIcon;
  final Image imagePerfil;
  final VoidCallback onMenuPressed;
  final VoidCallback onNotificationPressed;

  const AppAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onMenuPressed,
    required this.onNotificationPressed,
    this.iconNotification = Icons.notifications_outlined,
    this.iconColor = const Color.fromARGB(255, 138, 25, 214),
    this.imagePerfil =
        const Image(image: AssetImage('assets/images/perfil_padrao.jpg')),
    this.sizeIcon = 30, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 16.0), // Adiciona espaçamento horizontal
      child: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: imagePerfil,
        title: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.sourceSans3(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.sourceSans3(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: IconButton(
              icon: Icon(iconNotification),
              color: iconColor,
              onPressed: onNotificationPressed,
              iconSize: sizeIcon,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
