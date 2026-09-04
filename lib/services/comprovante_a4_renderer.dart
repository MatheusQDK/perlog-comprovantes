class ComprovanteA4Renderer {
  static const double pageWidthCm = 21.0;
  static const double pageHeightCm = 29.7;
  static const double itemWidthCm = 6.0;
  static const double itemHeightCm = 6.0;

  static List<Map<String, double>> positions12PerPage() {
    final positions = <Map<String, double>>[];

    for (var row = 0; row < 4; row++) {
      for (var col = 0; col < 3; col++) {
        positions.add({
          'x': 1.5 + (col * itemWidthCm),
          'y': 1.0 + (row * itemHeightCm),
          'width': itemWidthCm,
          'height': itemHeightCm,
        });
      }
    }

    return positions;
  }

  static int pagesRequired(int totalItems) {
    return (totalItems / 12).ceil();
  }
}
