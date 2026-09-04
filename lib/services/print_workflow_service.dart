class PrintWorkflowService {
  Future<PrintBatchResult> closeDailyBatch(List<String> receipts) async {
    final pages = (receipts.length / 12).ceil();

    return PrintBatchResult(
      receiptCount: receipts.length,
      pages: pages,
    );
  }
}

class PrintBatchResult {
  final int receiptCount;
  final int pages;

  PrintBatchResult({
    required this.receiptCount,
    required this.pages,
  });
}
