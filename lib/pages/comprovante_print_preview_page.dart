import 'package:flutter/material.dart';

class ComprovantePrintPreviewPage extends StatelessWidget {
  final int totalComprovantes;

  const ComprovantePrintPreviewPage({super.key, required this.totalComprovantes});

  @override
  Widget build(BuildContext context) {
    final paginas = (totalComprovantes / 12).ceil();

    return Scaffold(
      appBar: AppBar(title: const Text('Prévia de impressão A4')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Comprovantes: $totalComprovantes | Folhas A4: $paginas',
            ),
          ),
          Expanded(
            child: Center(
              child: AspectRatio(
                aspectRatio: 21 / 29.7,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: GridView.builder(
                    padding: const EdgeInsets.all(20),
                    itemCount: 12,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Center(child: Text('${index + 1}')),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
