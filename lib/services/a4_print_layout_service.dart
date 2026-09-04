class A4PrintLayoutService {
  static const int defaultItemsPerPage = 12;

  /// Organiza comprovantes pequenos em páginas A4.
  ///
  /// Layout padrão:
  /// - folha A4 vertical
  /// - grade 3 colunas x 4 linhas
  /// - até 12 comprovantes por página
  /// - tamanho aproximado de 6cm x 6cm
  static List<List<String>> createPages(
    List<String> receipts, {
    int itemsPerPage = defaultItemsPerPage,
  }) {
    final pages = <List<String>>[];

    for (var i = 0; i < receipts.length; i += itemsPerPage) {
      final end = (i + itemsPerPage > receipts.length)
          ? receipts.length
          : i + itemsPerPage;
      pages.add(receipts.sublist(i, end));
    }

    return pages;
  }

  static Map<String, double> getReceiptPosition(int index) {
    const columns = 3;
    const receiptSizeCm = 6.0;
    const marginCm = 1.0;

    final column = index % columns;
    final row = index ~/ columns;

    return {
      'x': marginCm + (column * receiptSizeCm),
      'y': marginCm + (row * receiptSizeCm),
      'width': receiptSizeCm,
      'height': receiptSizeCm,
    };
  }
}
