import '../models/scanned_document.dart';

class ScannerController {
  final List<ScannedDocument> documents = [];

  Future<ScannedDocument> createDocument(List<String> pages) async {
    final document = ScannedDocument(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      pages: pages,
      createdAt: DateTime.now(),
    );

    documents.add(document);
    return document;
  }

  void removeDocument(String id) {
    documents.removeWhere((item) => item.id == id);
  }
}
