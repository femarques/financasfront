import 'package:flutter/material.dart';

import 'common.dart';

class CartaoMensalPage extends StatefulWidget {
  const CartaoMensalPage({super.key});

  @override
  State<CartaoMensalPage> createState() => _CartaoMensalPageState();
}

class _CartaoMensalPageState extends State<CartaoMensalPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("cartao mensal"));
  }
}