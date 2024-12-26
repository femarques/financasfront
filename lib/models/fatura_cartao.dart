class FaturaCartao {
  final int id;
  final int cartaoId;
  final DateTime dataVencimento;
  final double valor;
  final int pessoaPagadoraId;
  final DateTime createdAt;
  final DateTime updatedAt;

  const FaturaCartao(
      {required this.id,
      required this.cartaoId,
      required this.dataVencimento,
      required this.valor,
      required this.pessoaPagadoraId,
      required this.createdAt,
      required this.updatedAt});

  factory FaturaCartao.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'cartaoId': int cartaoId,
        'dataVencimento': DateTime dataVencimento,
        'valor': double valor,
        'pessoaPagadoraId': int pessoaPagadoraId,
        'createdAt': DateTime createdAt,
        'updatedAt': DateTime updatedAt
      } =>
        FaturaCartao(
            id: id,
            cartaoId: cartaoId,
            dataVencimento: dataVencimento,
            valor: valor,
            pessoaPagadoraId: pessoaPagadoraId,
            createdAt: createdAt,
            updatedAt: updatedAt),
      _ => throw const FormatException('Failed to load FaturaCartao')
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cartaoId': cartaoId,
      'dataVencimento': dataVencimento,
      'valor': valor,
      'pessoaPagadoraId': pessoaPagadoraId,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }
}
