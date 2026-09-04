import 'package:flutter/material.dart';
import 'scanner_service.dart';

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

class ScannerHomePage extends StatefulWidget {
  const ScannerHomePage({super.key});

  @override
  State<ScannerHomePage> createState() => _ScannerHomePageState();
}

class _ScannerHomePageState extends State<ScannerHomePage> {
  final ScannerService service = ScannerService();
  List<String> pages = [];

  Future<void> openScanner() async {
    final result = await service.scanDocument();
    if (result != null) {
      setState(() => pages = result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perlog Scanner')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.document_scanner, size: 90),
            const Text('Digitalizar documento'),
            FilledButton.icon(
              onPressed: openScanner,
              icon: const Icon(Icons.camera_alt),
              label: const Text('Abrir scanner'),
            ),
            Text('${pages.length} página(s) capturada(s)'),
          ],
        ),
      ),
    );
  }
}
