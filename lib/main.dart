import 'package:flutter/material.dart';

void main() {
  runApp(const PerlogScannerApp());
}

class PerlogScannerApp extends StatelessWidget {
  const PerlogScannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perlog Scanner',
      theme: ThemeData(useMaterial3: true),
      home: const ScannerHomePage(),
    );
  }
}

class ScannerHomePage extends StatelessWidget {
  const ScannerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perlog Scanner')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.document_scanner, size: 90),
            const SizedBox(height: 20),
            const Text('Digitalizar documento'),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
              label: const Text('Abrir scanner'),
            ),
          ],
        ),
      ),
    );
  }
}
