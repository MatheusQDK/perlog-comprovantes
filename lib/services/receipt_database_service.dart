import 'package:supabase_flutter/supabase_flutter.dart';

class ReceiptDatabaseService {
  final SupabaseClient client = Supabase.instance.client;

  Future<void> saveReceipt({
    required String imageUrl,
    required String loteId,
  }) async {
    final user = client.auth.currentUser;

    await client.from('comprovantes').insert({
      'usuario_id': user?.id,
      'imagem_url': imageUrl,
      'lote_id': loteId,
    });
  }
}
