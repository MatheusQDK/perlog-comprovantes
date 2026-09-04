import 'package:supabase_flutter/supabase_flutter.dart';

class ScannerSubmissionService {
  final SupabaseClient client = Supabase.instance.client;

  Future<String?> enviarComprovante({
    required String filePath,
    required String loteId,
  }) async {
    final user = client.auth.currentUser;
    if (user == null) return null;

    final fileName = '${user.id}/${DateTime.now().millisecondsSinceEpoch}.jpg';

    await client.storage
        .from('comprovantes')
        .upload(fileName, File(filePath));

    final url = client.storage
        .from('comprovantes')
        .getPublicUrl(fileName);

    await client.from('comprovantes').insert({
      'usuario_id': user.id,
      'imagem_url': url,
      'lote_id': loteId,
    });

    return url;
  }
}
