class Cartao {
  final int id;
  final int pessoaId;
  final bool conjunto;
  final String nome;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Cartao(
      {required this.id,
      required this.pessoaId,
      required this.conjunto,
      required this.nome,
      required this.createdAt,
      required this.updatedAt});

  factory Cartao.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'pessoaId': int pessoaId,
        'conjunto': bool conjunto,
        'nome': String nome,
        'createdAt': DateTime createdAt,
        'updatedAt': DateTime updatedAt
      } =>
        Cartao(
            id: id,
            pessoaId: pessoaId,
            conjunto: conjunto,
            nome: nome,
            createdAt: createdAt,
            updatedAt: updatedAt),
      _ => throw const FormatException('Failed to load Cartao')
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pessoaId': pessoaId,
      'conjunto': conjunto,
      'nome': nome,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }
}
