import 'package:flutter/material.dart';

import 'common.dart';

class GraficosPage extends StatefulWidget {
  const GraficosPage({super.key});

  @override
  State<GraficosPage> createState() => _GraficosPageState();
}

class _GraficosPageState extends State<GraficosPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Graficos"));
  }
}