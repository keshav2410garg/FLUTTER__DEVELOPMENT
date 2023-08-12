import 'package:flutter/material.dart';

class CurrencyCovertorMaterialPage extends StatefulWidget {
  const CurrencyCovertorMaterialPage({super.key});
  @override
  State<CurrencyCovertorMaterialPage> createState() =>
      _CurrencyCovertorMaterialPageState();
}

class _CurrencyCovertorMaterialPageState
    extends State<CurrencyCovertorMaterialPage> {
  double result = 0;
  final TextEditingController texteditingcotroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'CURRENCY CONVERTOR',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('INR ${result.toString()}',
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: texteditingcotroller,
                style: const TextStyle(
                  color: Colors.black87,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please Enter the amount in USD',
                  hintStyle: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.brown,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(texteditingcotroller.text) * 83;
                  });
                },
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(15),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.amber),
                  fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                ),
                child: const Text('CONVERT'))
          ],
        ),
      ),
    );
  }
}
