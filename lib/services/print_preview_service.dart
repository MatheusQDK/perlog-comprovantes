class PrintPreviewService {
  static Map<String, dynamic> preview(int totalReceipts) {
    final pages = (totalReceipts / 12).ceil();

    return {
      'totalReceipts': totalReceipts,
      'pages': pages,
      'layout': '3x4',
      'paper': 'A4',
    };
  }
}
