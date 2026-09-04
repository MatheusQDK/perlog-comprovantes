import 'package:flutter/material.dart';

class RegisterEmployeePage extends StatelessWidget {
  const RegisterEmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Funcionário')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Nome')),
            const TextField(decoration: InputDecoration(labelText: 'E-mail')),
            const TextField(decoration: InputDecoration(labelText: 'Senha'), obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Solicitar cadastro'),
            ),
          ],
        ),
      ),
    );
  }
}
