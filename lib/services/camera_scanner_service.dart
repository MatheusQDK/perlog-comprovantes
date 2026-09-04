import 'package:cunning_document_scanner/cunning_document_scanner.dart';

class CameraScannerService {
  Future<List<String>> scanDocuments() async {
    final result = await CunningDocumentScanner.getPictures(
      isGalleryImportAllowed: true,
    );

    return result ?? <String>[];
  }
}
