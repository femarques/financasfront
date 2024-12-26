import 'package:flutter/material.dart';

import 'common.dart';

class ComprasNoCartaoPage extends StatefulWidget {
  const ComprasNoCartaoPage({super.key});

  @override
  State<ComprasNoCartaoPage> createState() => _ComprasNoCartaoPageState();
}

class _ComprasNoCartaoPageState extends State<ComprasNoCartaoPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Compras no cartão"));
  }
}