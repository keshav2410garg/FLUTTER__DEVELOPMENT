import 'package:flutter/material.dart';
import 'package:app3/currency_convertor_material_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyCovertorMaterialPage(),
    );
  }
}
