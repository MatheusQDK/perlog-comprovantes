import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'pdf_service.dart';

class DocumentPreviewPage extends StatelessWidget {
  final List<Uint8List> pages;

  const DocumentPreviewPage({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pré-visualização')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (_, index) => Card(
          child: Column(
            children: [
              Image.memory(pages[index]),
              ListTile(
                title: Text('Página ${index + 1}'),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.picture_as_pdf),
        label: const Text('Criar PDF'),
        onPressed: () async {
          await PdfService.createPdf(pages);
        },
      ),
    );
  }
}
