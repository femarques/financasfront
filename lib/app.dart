
import 'package:flutter/material.dart';
import 'pages/cartao_mensal.dart';
import 'pages/cartoes.dart';
import 'pages/compras_no_cartao.dart';
import 'pages/consolidacao.dart';
import 'pages/custos_fixos.dart';
import 'pages/custos_fixos_mensais.dart';
import 'pages/despesas.dart';
import 'pages/entradas.dart';
import 'pages/familia.dart';
import 'pages/faturas.dart';
import 'pages/graficos.dart';
import 'pages/investimentos.dart';
import 'pages/login.dart';
import 'pages/pagamentos.dart';
import 'pages/signup.dart';
import 'pages/usuario.dart';
import 'utils/constants.dart';
import 'utils/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Constants.appName,        
        home: const LoginPage(),
        theme: ThemeData(
          colorScheme: appColorScheme,
          // textTheme: appTextTheme,
          inputDecorationTheme: appInputDecorationTheme,
          useMaterial3: true
        ),
        routes: {
          AppPage.signup.route: (context) => const SignUpPage(),
          AppPage.login.route: (context) => const LoginPage(),
          AppPage.usuario.route: (context) => const UsuarioPage(),
          AppPage.familia.route: (context) => const FamiliaPage(),
          AppPage.cartoes.route: (context) => const CartoesPage(),
          AppPage.custosFixos.route: (context) => const CustosFixosPage(),
          AppPage.entradas.route: (context) => const EntradasPage(),
          AppPage.investimentos.route: (context) => const InvestimentosPage(),
          AppPage.custosFixosMensais.route: (context) => const CustosFixosMensaisPage(),
          AppPage.faturas.route: (context) => const FaturasPage(),
          AppPage.comprasNoCartao.route: (context) => const ComprasNoCartaoPage(),
          AppPage.despesas.route: (context) => const DespesasPage(),
          AppPage.consolidacao.route: (context) => const ConsolidacaoPage(),
          AppPage.cartaoMensal.route: (context) => const CartaoMensalPage(),
          AppPage.pagamentos.route: (context) => const PagamentosPage(),
          AppPage.graficos.route: (context) => const GraficosPage(),
        },
      );
  }
}