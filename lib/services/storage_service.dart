import 'dart:convert';

class StorageService {
  final List<Map<String, dynamic>> _documents = [];

  Future<void> saveDocument(Map<String, dynamic> document) async {
    _documents.add(document);
  }

  Future<List<Map<String, dynamic>>> getDocuments() async {
    return List.unmodifiable(_documents);
  }

  String encodeDocument(Map<String, dynamic> document) {
    return jsonEncode(document);
  }
}
