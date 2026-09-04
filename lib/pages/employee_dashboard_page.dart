import 'package:flutter/material.dart';

class EmployeeDashboardPage extends StatelessWidget {
  const EmployeeDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Painel Funcionário')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Novo lote de comprovantes'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Escanear comprovante'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Fechar lote e gerar PDF'),
            ),
          ],
        ),
      ),
    );
  }
}
