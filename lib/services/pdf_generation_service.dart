class PdfGenerationService {
  Future<String> generateA4BatchPdf(List<String> receipts) async {
    final pages = (receipts.length / 12).ceil();

    // Preparado para integrar pacote pdf e impressão.
    // Cada página A4 receberá até 12 comprovantes.

    return 'lote_${pages}_paginas.pdf';
  }
}
