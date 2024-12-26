class Familia {
  final int id;
  final String nome;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Familia(
      {required this.id,
      required this.nome,
      required this.createdAt,
      required this.updatedAt});

  factory Familia.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'nome': String nome,
        'createdAt': DateTime createdAt,
        'updatedAt': DateTime updatedAt
      } =>
        Familia(id: id, nome: nome, createdAt: createdAt, updatedAt: updatedAt),
      _ => throw const FormatException('Failed to load Familia')
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }
}
