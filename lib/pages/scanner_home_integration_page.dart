import 'package:flutter/material.dart';

class ScannerHomeIntegrationPage extends StatefulWidget {
  const ScannerHomeIntegrationPage({super.key});

  @override
  State<ScannerHomeIntegrationPage> createState() => _ScannerHomeIntegrationPageState();
}

class _ScannerHomeIntegrationPageState extends State<ScannerHomeIntegrationPage> {
  int totalComprovantes = 0;

  Future<void> escanearComprovante() async {
    setState(() {
      totalComprovantes++;
    });
  }

  Future<void> gerarLoteA4() async {
    // Integração com PDF A4 será chamada aqui.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Comprovantes do dia')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Comprovantes: $totalComprovantes'),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: escanearComprovante,
              icon: const Icon(Icons.camera_alt),
              label: const Text('Escanear comprovante'),
            ),
            FilledButton.icon(
              onPressed: gerarLoteA4,
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text('Gerar PDF A4'),
            ),
          ],
        ),
      ),
    );
  }
}
