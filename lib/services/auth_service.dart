import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/profile.dart';

class AuthService {
  final SupabaseClient supabase = Supabase.instance.client;

  Future<AuthResponse> login(String email, String senha) async {
    return await supabase.auth.signInWithPassword(
      email: email,
      password: senha,
    );
  }

  Future<void> logout() async {
    await supabase.auth.signOut();
  }

  Future<Profile?> getProfile() async {
    final user = supabase.auth.currentUser;

    if (user == null) return null;

    final data = await supabase
        .from('profiles')
        .select()
        .eq('id', user.id)
        .single();

    return Profile.fromMap(data);
  }
}
