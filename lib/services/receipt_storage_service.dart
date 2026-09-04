import 'dart:typed_data';
import 'package:supabase_flutter/supabase_flutter.dart';

class ReceiptStorageService {
  final SupabaseClient client = Supabase.instance.client;

  Future<String> uploadReceipt({
    required Uint8List file,
    required String fileName,
  }) async {
    await client.storage
        .from('comprovantes')
        .uploadBinary(fileName, file);

    return client.storage
        .from('comprovantes')
        .getPublicUrl(fileName);
  }
}
