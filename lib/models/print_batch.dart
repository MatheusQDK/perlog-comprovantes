class PrintBatch {
  final DateTime createdAt;
  final int receiptsCount;
  final int pagesCount;

  const PrintBatch({
    required this.createdAt,
    required this.receiptsCount,
    required this.pagesCount,
  });
}
