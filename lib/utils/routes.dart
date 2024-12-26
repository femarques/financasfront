enum AppPage {
  root(route: "/"),

  login(route: "/login"),
  signup(route: "/signup"),

  familia(route: "/familia"),
  cartoes(route: "/cartoes"),
  custosFixos(route: "/custosFixos"),
  usuario(route: "/usuario"),

  entradas(route: "/entradas"),
  investimentos(route: "/investimentos"),
  custosFixosMensais(route: "/custosFixosMensais"),
  faturas(route: "/faturas"),
  comprasNoCartao(route: "/comprasNoCartao"),
  despesas(route: "/despesas"),

  consolidacao(route: "/consolidacao"),
  cartaoMensal(route: "/cartaoMensal"),
  pagamentos(route: "/pagamentos"),
  graficos(route: "/graficos");

  final String route;
  const AppPage({required this.route});
}
