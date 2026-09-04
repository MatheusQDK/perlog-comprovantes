class A4PdfBatchService {
  static const int receiptsPerPage = 12;

  int pagesNeeded(int receipts) {
    if (receipts == 0) return 0;
    return (receipts / receiptsPerPage).ceil();
  }

  Future<String> generateBatchPdf(List<String> images) async {
    final pages = pagesNeeded(images.length);
    return 'PDF preparado: $pages paginas A4';
  }
}
