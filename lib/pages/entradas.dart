import 'package:flutter/material.dart';

import 'common.dart';

class EntradasPage extends StatefulWidget {
  const EntradasPage({super.key});

  @override
  State<EntradasPage> createState() => _EntradasPageState();
}

class _EntradasPageState extends State<EntradasPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Entradas"));
  }
}