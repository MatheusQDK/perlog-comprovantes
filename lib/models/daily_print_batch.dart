class DailyPrintBatch {
  final DateTime date;
  final List<String> receipts;

  const DailyPrintBatch({
    required this.date,
    required this.receipts,
  });

  int get totalReceipts => receipts.length;

  int get totalPages => (receipts.length / 12).ceil();
}
