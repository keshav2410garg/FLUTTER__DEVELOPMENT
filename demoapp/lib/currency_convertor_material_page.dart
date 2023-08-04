import 'package:flutter/material.dart';

class CurrencyCovertorMaterialPage extends StatelessWidget {
  const CurrencyCovertorMaterialPage({super.key});

  @override
  Widget build(BuildContext content) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('CUNRRENCY CONVERTOR',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                )),
            TextField(
              style: TextStyle(
                color: Colors.black87,
              ),
              decoration: InputDecoration(
                hintText: 'Please Enter the amount in INR',
                hintStyle: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
