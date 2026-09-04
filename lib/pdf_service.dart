import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfService {
  static Future<Uint8List> createPdf(List<Uint8List> images) async {
    final document = pw.Document();

    for (final image in images) {
      document.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (_) => pw.Center(
            child: pw.Image(pw.MemoryImage(image)),
          ),
        ),
      );
    }

    return document.save();
  }
}
