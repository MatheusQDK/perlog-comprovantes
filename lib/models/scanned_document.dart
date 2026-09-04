class ScannedDocument {
  final List<String> pages;
  final DateTime createdAt;

  ScannedDocument({
    required this.pages,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  int get totalPages => pages.length;
}
