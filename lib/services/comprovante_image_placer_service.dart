class ComprovanteImagePlacerService {
  static const double pageWidthCm = 21.0;
  static const double pageHeightCm = 29.7;
  static const double itemWidthCm = 6.0;
  static const double itemHeightCm = 6.0;

  List<Map<String, double>> calculatePositions(int quantity) {
    final positions = <Map<String, double>>[];

    for (var i = 0; i < quantity && i < 12; i++) {
      final column = i % 3;
      final row = i ~/ 3;

      positions.add({
        'x': 0.5 + (column * itemWidthCm),
        'y': 1.0 + (row * itemHeightCm),
        'width': itemWidthCm,
        'height': itemHeightCm,
      });
    }

    return positions;
  }
}
