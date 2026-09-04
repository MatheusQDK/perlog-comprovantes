class ScannerFlowService {
  final List<String> _documents = [];

  List<String> get documents => List.unmodifiable(_documents);

  Future<void> addCapturedImage(String path) async {
    // Entrada preparada para câmera real.
    // Próxima integração conecta camera plugin e processamento.
    _documents.add(path);
  }

  void removeDocument(String path) {
    _documents.remove(path);
  }

  void clearSession() {
    _documents.clear();
  }

  int get total => _documents.length;
}
