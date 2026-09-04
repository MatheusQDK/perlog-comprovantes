import 'package:flutter/material.dart';

class A4PreviewPage extends StatelessWidget {
  final int totalComprovantes;

  const A4PreviewPage({super.key, required this.totalComprovantes});

  @override
  Widget build(BuildContext context) {
    final paginas = (totalComprovantes / 12).ceil();

    return Scaffold(
      appBar: AppBar(title: const Text('Pré-visualização A4')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Comprovantes: $totalComprovantes | Folhas: $paginas',
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Expanded(
            child: Center(
              child: AspectRatio(
                aspectRatio: 210 / 297,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: 12,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Center(child: Text('Doc ${index + 1}')),
                    ),
                  ),
                ),
              ),
            ),
          ),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.picture_as_pdf),
            label: const Text('Gerar PDF A4'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
