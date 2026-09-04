import 'package:supabase_flutter/supabase_flutter.dart';

class ReceiptUploadService {
  final SupabaseClient client = Supabase.instance.client;

  Future<String> uploadReceipt({
    required List<int> bytes,
    required String fileName,
  }) async {
    final path = 'comprovantes/$fileName';

    await client.storage
        .from('comprovantes')
        .uploadBinary(path, bytes);

    return client.storage
        .from('comprovantes')
        .getPublicUrl(path);
  }
}
