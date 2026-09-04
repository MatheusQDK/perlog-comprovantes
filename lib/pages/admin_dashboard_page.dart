import 'package:flutter/material.dart';
import '../services/user_management_service.dart';

class AdminDashboardPage extends StatefulWidget {
  const AdminDashboardPage({super.key});

  @override
  State<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  final service = UserManagementService();

  List<Map<String, dynamic>> users = [];

  Future<void> loadUsers() async {
    final data = await service.pendingUsers();
    setState(() => users = data);
  }

  @override
  void initState() {
    super.initState();
    loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ADM MASTER')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user['nome'] ?? ''),
            subtitle: Text(user['email'] ?? ''),
            trailing: ElevatedButton(
              onPressed: () async {
                await service.approveUser(user['id']);
                loadUsers();
              },
              child: const Text('Aprovar'),
            ),
          );
        },
      ),
    );
  }
}
