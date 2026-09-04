class A4CutLineService {
  static const double pageWidthCm = 21.0;
  static const double pageHeightCm = 29.7;

  static Map<String, dynamic> generateLayout({int itemsPerPage = 12}) {
    return {
      'page': 'A4',
      'itemsPerPage': itemsPerPage,
      'columns': 3,
      'rows': 4,
      'showCutLines': true,
      'itemSizeCm': 6,
    };
  }
}
