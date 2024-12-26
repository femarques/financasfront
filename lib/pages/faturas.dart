import 'package:flutter/material.dart';

import 'common.dart';

class FaturasPage extends StatefulWidget {
  const FaturasPage({super.key});

  @override
  State<FaturasPage> createState() => _FaturasPageState();
}

class _FaturasPageState extends State<FaturasPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Faturas"));
  }
}