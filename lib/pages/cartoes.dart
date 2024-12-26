import 'package:flutter/material.dart';

import 'common.dart';

class CartoesPage extends StatefulWidget {
  const CartoesPage({super.key});

  @override
  State<CartoesPage> createState() => _CartoesPageState();
}

class _CartoesPageState extends State<CartoesPage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("cartoes"));
  }
}