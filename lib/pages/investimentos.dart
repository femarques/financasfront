import 'package:flutter/material.dart';

import 'common.dart';

class InvestimentosPage extends StatefulWidget {
  const InvestimentosPage({super.key});

  @override
  State<InvestimentosPage> createState() => _InvestimentosPageState();
}

class _InvestimentosPageState extends State<InvestimentosPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Investimentos"));
  }
}