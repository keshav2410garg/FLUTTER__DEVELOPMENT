import 'package:flutter/material.dart';

void main() {
  runApp(const StateApp());
}

class StateApp extends StatefulWidget {
  const StateApp({super.key});

  @override
  State<StateApp> createState() => _ImplementState();
}

class _ImplementState extends State<StateApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StateFul App'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World ${_count.toString()}',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _count = _count + 1;
                  });
                },
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(15),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.amber),
                  fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                ),
                child: const Text('INCREAMENT'))
          ],
        )),
      ),
    );
  }
}
