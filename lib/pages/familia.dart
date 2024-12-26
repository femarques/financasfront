import 'package:financasfront/pages/common.dart';
import 'package:flutter/material.dart';

class FamiliaPage extends StatefulWidget {
  const FamiliaPage({super.key});

  @override
  State<FamiliaPage> createState() => _FamiliaPageState();
}


class _FamiliaPageState extends State<FamiliaPage> {
  
  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Familia"));
  }
}
