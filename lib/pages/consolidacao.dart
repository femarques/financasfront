import 'package:flutter/material.dart';

import 'common.dart';

class ConsolidacaoPage extends StatefulWidget {
  const ConsolidacaoPage({super.key});

  @override
  State<ConsolidacaoPage> createState() => _ConsolidacaoPageState();
}

class _ConsolidacaoPageState extends State<ConsolidacaoPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Consolidação"));
  }
}