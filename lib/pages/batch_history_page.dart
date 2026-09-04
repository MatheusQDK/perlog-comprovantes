import 'package:flutter/material.dart';

class BatchHistoryPage extends StatelessWidget {
  const BatchHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lotes')),
      body: const Center(
        child: Text('Histórico de lotes e PDFs'),
      ),
    );
  }
}
