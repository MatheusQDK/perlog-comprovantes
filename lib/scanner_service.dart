import 'package:cunning_document_scanner/cunning_document_scanner.dart';

class ScannerService {
  Future<List<String>?> scanDocument() async {
    return CunningDocumentScanner.getPictures(
      noOfPages: 10,
      isGalleryImportAllowed: true,
    );
  }
}
