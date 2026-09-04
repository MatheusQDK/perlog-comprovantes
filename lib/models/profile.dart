class Profile {
  final String id;
  final String nome;
  final String email;
  final String perfil;
  final bool aprovado;

  Profile({
    required this.id,
    required this.nome,
    required this.email,
    required this.perfil,
    required this.aprovado,
  });

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      email: map['email'] ?? '',
      perfil: map['perfil'] ?? 'FUNCIONARIO',
      aprovado: map['aprovado'] ?? false,
    );
  }

  bool get isMaster => perfil == 'MASTER';
}
