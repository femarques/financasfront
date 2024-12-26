class Pessoa {
  final int id;
  final String nome;
  final String email;
  final int familiaId;
  final int percentual;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Pessoa(
      {required this.id,
      required this.nome,
      required this.email,
      required this.familiaId,
      required this.percentual,
      required this.createdAt,
      required this.updatedAt});

  factory Pessoa.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'nome': String nome,
        'email': String email,
        'familiaId': int familiaId,
        'percentual': int percentual,
        'createdAt': DateTime createdAt,
        'updatedAt': DateTime updatedAt
      } =>
        Pessoa(
            id: id,
            nome: nome,
            email: email,
            familiaId: familiaId,
            percentual: percentual,
            createdAt: createdAt,
            updatedAt: updatedAt),
      _ => throw const FormatException('Failed to load Pessoa')
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'familiaId': familiaId,
      'percentual': percentual,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }
}
