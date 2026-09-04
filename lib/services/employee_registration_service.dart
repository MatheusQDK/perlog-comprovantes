import 'package:supabase_flutter/supabase_flutter.dart';

class EmployeeRegistrationService {
  final SupabaseClient client = Supabase.instance.client;

  Future<AuthResponse> register({
    required String email,
    required String password,
    required String nome,
  }) async {
    final response = await client.auth.signUp(
      email: email,
      password: password,
    );

    if (response.user != null) {
      await client.from('profiles').insert({
        'id': response.user!.id,
        'nome': nome,
        'email': email,
        'perfil': 'FUNCIONARIO',
        'aprovado': false,
      });
    }

    return response;
  }
}
