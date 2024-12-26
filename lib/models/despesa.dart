class Despesa {
  final int id;
  final int pessoaId;
  final bool conjunto;
  final DateTime dataVencimento;
  final String descricao;
  final double valor;
  final int pessoaPagadoraId;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Despesa(
      {required this.id,
      required this.pessoaId,
      required this.conjunto,
      required this.dataVencimento,
      required this.descricao,
      required this.valor,
      required this.pessoaPagadoraId,
      required this.createdAt,
      required this.updatedAt});

  factory Despesa.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'pessoaId': int pessoaId,
        'conjunto': bool conjunto,
        'dataVencimento': DateTime dataVencimento,
        'descricao': String descricao,
        'valor': double valor,
        'pessoaPagadoraId': int pessoaPagadoraId,
        'createdAt': DateTime createdAt,
        'updatedAt': DateTime updatedAt,
      } =>
        Despesa(
            id: id,
            pessoaId: pessoaId,
            conjunto: conjunto,
            dataVencimento: dataVencimento,
            descricao: descricao,
            valor: valor,
            pessoaPagadoraId: pessoaPagadoraId,
            createdAt: createdAt,
            updatedAt: updatedAt),
      _ => throw const FormatException('Failed to load Despesa')
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pessoaId': pessoaId,
      'conjunto': conjunto,
      'dataVencimento': dataVencimento,
      'descricao': descricao,
      'valor': valor,
      'pessoaPagadoraId': pessoaPagadoraId,
      'createdAt': createdAt,
      'updatedAt': updatedAt
    };
  }
}
