class CustoFixo {
  final int id;
  final int pessoaId;
  final bool conjunto;
  final String nome;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CustoFixo(
      {required this.id,
      required this.pessoaId,
      required this.conjunto,
      required this.nome,
      required this.createdAt,
      required this.updatedAt});

  factory CustoFixo.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'pessoaId': int pessoaId,
        'conjunto': bool conjunto,
        'nome': String nome,
        'createdAt': DateTime createdAt,
        'updatedAt': DateTime updatedAt,
      } =>
        CustoFixo(
            id: id,
            pessoaId: pessoaId,
            conjunto: conjunto,
            nome: nome,
            createdAt: createdAt,
            updatedAt: updatedAt),
      _ => throw const FormatException('Failed to load CustoFixo')
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
