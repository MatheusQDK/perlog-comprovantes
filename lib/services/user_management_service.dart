import 'package:supabase_flutter/supabase_flutter.dart';

class UserManagementService {
  final SupabaseClient client = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> pendingUsers() async {
    final result = await client
        .from('profiles')
        .select()
        .eq('aprovado', false);

    return List<Map<String, dynamic>>.from(result);
  }

  Future<void> approveUser(String userId) async {
    await client
        .from('profiles')
        .update({'aprovado': true})
        .eq('id', userId);
  }

  Future<void> blockUser(String userId) async {
    await client
        .from('profiles')
        .update({'aprovado': false})
        .eq('id', userId);
  }
}
