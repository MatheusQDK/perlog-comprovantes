import 'receipt_batch_controller.dart';
import 'receipt_upload_service.dart';
import 'receipt_database_service.dart';

class ReceiptWorkflowService {
  final ReceiptUploadService uploadService = ReceiptUploadService();
  final ReceiptDatabaseService databaseService = ReceiptDatabaseService();
  final ReceiptBatchController batchController = ReceiptBatchController();

  Future<void> processReceipt(String filePath) async {
    final imageUrl = await uploadService.uploadReceipt(filePath);

    await databaseService.saveReceipt(
      imageUrl: imageUrl,
    );

    batchController.addReceipt(imageUrl);
  }

  int get totalReceipts => batchController.count;
}
