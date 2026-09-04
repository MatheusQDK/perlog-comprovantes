import 'package:supabase_flutter/supabase_flutter.dart';

class BatchService {
  final SupabaseClient client = Supabase.instance.client;

  Future<String> createBatch({required int quantity}) async {
    final user = client.auth.currentUser;

    if (user == null) {
      throw Exception('Usuário não autenticado');
    }

    final result = await client
        .from('lotes')
        .insert({
          'usuario_id': user.id,
          'quantidade': quantity,
          'status': 'ABERTO'
        })
        .select()
        .single();

    return result['id'];
  }
}
