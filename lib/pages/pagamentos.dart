import 'package:flutter/material.dart';

import 'common.dart';

class PagamentosPage extends StatefulWidget {
  const PagamentosPage({super.key});

  @override
  State<PagamentosPage> createState() => _PagamentosPageState();
}

class _PagamentosPageState extends State<PagamentosPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Pagamentos"));
  }
}