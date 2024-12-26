class CustoFixoMensal {
  final int id;
  final int custoFixoId;
  final DateTime dataVencimento;
  final double valor;
  final int pessoaPagadoraId;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CustoFixoMensal(
      {required this.id,
      required this.custoFixoId,
      required this.dataVencimento,
      required this.valor,
      required this.pessoaPagadoraId,
      required this.createdAt,
      required this.updatedAt});

  factory CustoFixoMensal.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'custoFixoId': int custoFixoId,
        'dataVencimento': DateTime dataVencimento,
        'valor': double valor,
        'pessoaPagadoraId': int pessoaPagadoraId,
        'createdAt': DateTime createdAt,
        'updatedAt': DateTime updatedAt
      } =>
        CustoFixoMensal(
            id: id,
            custoFixoId: custoFixoId,
            dataVencimento: dataVencimento,
            valor: valor,
            pessoaPagadoraId: pessoaPagadoraId,
            createdAt: createdAt,
            updatedAt: updatedAt),
      _ => throw const FormatException('Failed to load CustoFixoMensal')
    };
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'custoFixoId': custoFixoId,
      'dataVencimento': dataVencimento,
      'valor': valor,
      'pessoaPagadoraId': pessoaPagadoraId,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }
}
