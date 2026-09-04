import 'dart:typed_data';

/// Organiza comprovantes pequenos em páginas A4 para impressão.
///
/// Cada página suporta até 12 comprovantes (3 colunas x 4 linhas).
class A4LayoutService {
  static const int itemsPerPage = 12;

  List<List<Uint8List>> createA4Pages(List<Uint8List> receipts) {
    final pages = <List<Uint8List>>[];

    for (var i = 0; i < receipts.length; i += itemsPerPage) {
      final end = (i + itemsPerPage < receipts.length)
          ? i + itemsPerPage
          : receipts.length;
      pages.add(receipts.sublist(i, end));
    }

    return pages;
  }
}
