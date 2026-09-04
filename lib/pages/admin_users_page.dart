import 'package:flutter/material.dart';

class AdminUsersPage extends StatelessWidget {
  const AdminUsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aprovação de Usuários')),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Usuários pendentes'),
            subtitle: Text('Aguardando aprovação do ADM MASTER'),
          ),
        ],
      ),
    );
  }
}
