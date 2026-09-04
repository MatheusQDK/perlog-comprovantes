import 'package:flutter/material.dart';

class PrintBatchPage extends StatelessWidget {
  const PrintBatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imprimir comprovantes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Lote do dia'),
            const SizedBox(height: 12),
            const Text('Comprovantes agrupados: 12 por folha A4'),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.print),
              label: const Text('Gerar PDF para impressão'),
            )
          ],
        ),
      ),
    );
  }
}
