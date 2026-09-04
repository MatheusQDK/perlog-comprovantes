import 'package:flutter/material.dart';

class EmployeeBatchPage extends StatefulWidget {
  const EmployeeBatchPage({super.key});

  @override
  State<EmployeeBatchPage> createState() => _EmployeeBatchPageState();
}

class _EmployeeBatchPageState extends State<EmployeeBatchPage> {
  int totalComprovantes = 0;

  void adicionarComprovante() {
    setState(() {
      totalComprovantes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Novo Lote')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Comprovantes: $totalComprovantes'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: adicionarComprovante,
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
