import 'dart:convert';

import 'package:financasfront/models/entrada.dart';
import 'package:http/http.dart' as http;

class EntradaService {
  
  Future<Entrada> criarEntrada(Entrada entrada) async {
    final response = await http.post(
      Uri.parse("uri"),
      headers: <String, String> {},
      body: jsonEncode(entrada),
    );

    if (response.statusCode == 201) {
      return Entrada.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception();
    }
  }
}
