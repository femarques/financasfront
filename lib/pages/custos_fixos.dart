import 'package:flutter/material.dart';

import 'common.dart';

class CustosFixosPage extends StatefulWidget {
  const CustosFixosPage({super.key});

  @override
  State<CustosFixosPage> createState() => _CustosFixosPageState();
}

class _CustosFixosPageState extends State<CustosFixosPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Custos fixos"));
  }
}