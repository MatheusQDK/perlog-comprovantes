import 'package:cunning_document_scanner/cunning_document_scanner.dart';

class CameraScannerService {
  Future<List<String>> scanDocuments() async {
    final result = await CunningDocumentScanner.getPictures(
      isGalleryImportAllowed: true,
    );

    return result ?? <String>[];
  }

  Future<List<String>> scanReceiptBatch() async {
    final images = await scanDocuments();

    // Próxima integração:
    // 1. ajustar comprovante para 6x6 cm
    // 2. enviar para Supabase Storage
    // 3. registrar na tabela comprovantes
    return images;
  }
}
