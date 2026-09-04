import 'package:supabase_flutter/supabase_flutter.dart';

class AppStartupService {
  final client = Supabase.instance.client;

  Future<Map<String, dynamic>?> loadProfile() async {
    final user = client.auth.currentUser;
    if (user == null) return null;

    final data = await client
        .from('profiles')
        .select()
        .eq('id', user.id)
        .maybeSingle();

    return data;
  }

  bool canAccess(Map<String, dynamic>? profile) {
    if (profile == null) return false;
    return profile['aprovado'] == true;
  }
}
