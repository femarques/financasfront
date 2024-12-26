import 'package:flutter/material.dart';

import 'common.dart';

class CustosFixosMensaisPage extends StatefulWidget {
  const CustosFixosMensaisPage({super.key});

  @override
  State<CustosFixosMensaisPage> createState() => _CustosFixosMensaisPageState();
}

class _CustosFixosMensaisPageState extends State<CustosFixosMensaisPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Custos fixos mensais"));
  }
}