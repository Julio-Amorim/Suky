import 'package:flutter/material.dart';
import 'package:suky/src/pages/login/login.dart';

//Stateless widget - sem estado, não tem interação com o usuário
//Stateful widget - com estado, tem interação com o usuário

class Suky extends StatefulWidget {
  const Suky({super.key});

  @override
  State<Suky> createState() => _SukyState();
}

class _SukyState extends State<Suky> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 25, 214),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/logo_suky.png'),
            ),
            const SizedBox(height: 70),
            SizedBox(
              width: 300,
              height: 46,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Começar',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter',
                        )),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
