import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      iconSize: 30.0,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(IconsaxPlusBold.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsaxPlusBold.menu_board),
          label: 'Menu',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsaxPlusBold.arrow_3),
          label: 'Estoque',
        ),
        BottomNavigationBarItem(
          icon: Icon(IconsaxPlusBold.user),
          label: 'Funcionários',
        ),
      ],
      selectedItemColor: const Color.fromARGB(255, 138, 25, 214),
      selectedFontSize: 13.0,
      unselectedItemColor: Colors.grey,
      unselectedFontSize: 13.0,
      showUnselectedLabels: true,
    );
  }
}
