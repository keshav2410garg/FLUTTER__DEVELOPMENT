import 'package:flutter/material.dart';

class CurrencyCovertorMaterialPage extends StatelessWidget {
  const CurrencyCovertorMaterialPage({super.key});

  @override
  Widget build(BuildContext content) {
    double result = 0;
    final TextEditingController texteditingcotroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'CURRENCY CONVERTOR',
          style: TextStyle(color: Colors.black12),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(result.toString(),
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
                  hintText: 'Please Enter the amount in INR',
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
                  result=double.parse(texteditingcotroller.text * 83));
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
