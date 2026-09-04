import 'package:supabase_flutter/supabase_flutter.dart';

class AuthGuard {
  final supabase = Supabase.instance.client;

  Future<bool> isMaster() async {
    final user = supabase.auth.currentUser;
    if (user == null) return false;

    final profile = await supabase
        .from('profiles')
        .select('perfil')
        .eq('id', user.id)
        .maybeSingle();

    return profile?['perfil'] == 'MASTER';
  }

  Future<bool> isApproved() async {
    final user = supabase.auth.currentUser;
    if (user == null) return false;

    final profile = await supabase
        .from('profiles')
        .select('aprovado')
        .eq('id', user.id)
        .maybeSingle();

    return profile?['aprovado'] == true;
  }
}
