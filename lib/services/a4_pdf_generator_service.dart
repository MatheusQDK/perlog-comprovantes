import 'dart:typed_data';

/// Serviço responsável por montar folhas A4 com comprovantes pequenos.
///
/// Layout padrão:
/// - A4 retrato
/// - 3 colunas x 4 linhas
/// - até 12 comprovantes por página
/// - cada posição representa aproximadamente 6cm x 6cm
class A4PdfGeneratorService {
  static const int itemsPerPage = 12;
  static const int columns = 3;
  static const int rows = 4;

  Future<Uint8List> generate(List<Uint8List> receipts) async {
    // Implementação final será ligada ao pacote PDF.
    // O cálculo das páginas já está preparado.
    final pages = (receipts.length / itemsPerPage).ceil();

    return Uint8List.fromList([
      pages,
      columns,
      rows,
      receipts.length,
    ]);
  }
}
