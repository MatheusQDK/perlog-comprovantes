import 'package:flutter/material.dart';

class ScannerReceiptPage extends StatelessWidget {
  const ScannerReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escanear comprovante'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Scanner de comprovantes'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Integração da câmera será conectada aqui.
              },
              child: const Text('Capturar comprovante'),
            ),
          ],
        ),
      ),
    );
  }
}
