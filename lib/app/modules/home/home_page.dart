import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todolist/app/modules/email.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              'Hello Flutter',
            ),
            Text(Modular.get<Email>().email),
            ElevatedButton(
              onPressed: () {
                Modular.to.pushReplacementNamed('/login');
              },
              child: const Text('Sair'),
            )
          ],
        ),
      ),
    );
  }
}
