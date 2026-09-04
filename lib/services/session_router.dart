import 'package:supabase_flutter/supabase_flutter.dart';

class SessionRouter {
  final supabase = Supabase.instance.client;

  Future<String?> getUserRole() async {
    final user = supabase.auth.currentUser;
    if (user == null) return null;

    final profile = await supabase
        .from('profiles')
        .select('perfil, aprovado')
        .eq('id', user.id)
        .single();

    if (profile['aprovado'] != true) return 'PENDENTE';

    return profile['perfil'] as String?;
  }
}
