import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  final senha = TextEditingController();
  final auth = AuthService();

  bool carregando = false;

  Future<void> entrar() async {
    setState(() => carregando = true);

    await auth.login(
      email.text.trim(),
      senha.text.trim(),
    );

    setState(() => carregando = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Perlog Comprovantes'),
            TextField(controller: email),
            TextField(controller: senha, obscureText: true),
            ElevatedButton(
              onPressed: carregando ? null : entrar,
              child: const Text('Entrar'),
            )
          ],
        ),
      ),
    );
  }
}
