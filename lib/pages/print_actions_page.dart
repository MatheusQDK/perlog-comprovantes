import 'package:flutter/material.dart';

class PrintActionsPage extends StatelessWidget {
  const PrintActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Imprimir comprovantes')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Comprovantes do dia'),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text('Gerar PDF A4'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.print),
              label: const Text('Imprimir'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.share),
              label: const Text('Compartilhar'),
            ),
          ],
        ),
      ),
    );
  }
}
