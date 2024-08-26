// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:suky/src/pages/home/home.dart';
import 'package:suky/src/pages/login/login.dart';
import 'package:suky/src/pages/suky.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: Suky());
  }
}
