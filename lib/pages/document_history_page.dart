import 'package:flutter/material.dart';

class DocumentHistoryPage extends StatelessWidget {
  const DocumentHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Documentos salvos')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: Text('Nenhum documento salvo'),
              subtitle: Text('Seus PDFs aparecerão aqui'),
            ),
          )
        ],
      ),
    );
  }
}
