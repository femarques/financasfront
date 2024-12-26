import 'package:flutter/material.dart';

import 'common.dart';

class DespesasPage extends StatefulWidget {
  const DespesasPage({super.key});

  @override
  State<DespesasPage> createState() => _DespesasPageState();
}

class _DespesasPageState extends State<DespesasPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Despesas"));
  }
}