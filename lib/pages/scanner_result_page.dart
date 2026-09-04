import 'package:flutter/material.dart';

class ScannerResultPage extends StatelessWidget {
  final List<String> pages;

  const ScannerResultPage({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Documento')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.description),
                  title: Text('Página ${index + 1}'),
                  subtitle: Text(pages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.picture_as_pdf),
              label: const Text('Gerar PDF'),
            ),
          ),
        ],
      ),
    );
  }
}
