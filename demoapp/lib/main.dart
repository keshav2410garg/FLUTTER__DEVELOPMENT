import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext Context) {
    return const  Text(
      "Hello World!",
      textDirection: TextDirection.ltr,
    );
  }
}
