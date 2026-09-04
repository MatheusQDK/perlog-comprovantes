class ScannerPipeline {
  /// Fluxo principal do comprovante:
  /// 1. Capturar imagem
  /// 2. Corrigir perspectiva
  /// 3. Melhorar qualidade
  /// 4. Ajustar para impressão 6x6cm
  /// 5. Adicionar ao lote diário
  Future<String> process(String imagePath) async {
    // Integração com câmera e processamento de imagem será conectada aqui.
    return imagePath;
  }
}
