class ScanSession {
  final DateTime createdAt;
  final List<String> pages;

  ScanSession({
    required this.createdAt,
    required this.pages,
  });

  int get totalPages => pages.length;
}
