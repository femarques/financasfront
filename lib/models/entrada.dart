class Entrada {
  final int id;
  final int pessoaId;
  final DateTime dataVencimento;
  final double valor;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Entrada(
      {required this.id,
      required this.pessoaId,
      required this.dataVencimento,
      required this.valor,
      required this.createdAt,
      required this.updatedAt});

  factory Entrada.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'pessoaId': int pessoaId,
        'dataVencimento': DateTime dataVencimento,
        'valor': double valor,
        'createdAt': DateTime createdAt,
        'updatedAt': DateTime updatedAt,
      } =>
        Entrada(
            id: id,
            pessoaId: pessoaId,
            dataVencimento: dataVencimento,
            valor: valor,
            createdAt: createdAt,
            updatedAt: updatedAt),
      _ => throw const FormatException('Failed to load Entrada')
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pessoaId': pessoaId,
      'dataVencimento': dataVencimento,
      'valor': valor,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }
}
