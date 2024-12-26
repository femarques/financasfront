class CompraCartao {
  final int id;
  final int cartaoId;
  final DateTime mesInicio;
  final int numParcelas;
  final DateTime mesFim;
  final double valorTotal;
  final double valorParcela;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CompraCartao(
      {required this.id,
      required this.cartaoId,
      required this.mesInicio,
      required this.numParcelas,
      required this.mesFim,
      required this.valorTotal,
      required this.valorParcela,
      required this.createdAt,
      required this.updatedAt});

  factory CompraCartao.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'cartaoId': int cartaoId,
        'mesInicio': DateTime mesInicio,
        'numParcelas': int numParcelas,
        'mesFim': DateTime mesFim,
        'valorTotal': double valorTotal,
        'valorParcela': double valorParcela,
        'createdAt': DateTime createdAt,
        'updatedAt': DateTime updatedAt
      } =>
        CompraCartao(
            id: id,
            cartaoId: cartaoId,
            mesInicio: mesInicio,
            numParcelas: numParcelas,
            mesFim: mesFim,
            valorTotal: valorTotal,
            valorParcela: valorParcela,
            createdAt: createdAt,
            updatedAt: updatedAt),
      _ => throw const FormatException('Failed to load CompraCartao')
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cartaoId': cartaoId,
      'mesInicio': mesInicio,
      'numParcelas': numParcelas,
      'mesFim': mesFim,
      'valorTotal': valorTotal,
      'valorParcela': valorParcela,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }
}
