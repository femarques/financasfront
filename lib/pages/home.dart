import 'package:flutter/material.dart';

import 'common.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Home"));
  }
}