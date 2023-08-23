import 'package:flutter/material.dart';

void main() {
  runApp(const TabApp());
}

class TabApp extends StatefulWidget {
  const TabApp({super.key});

  @override
  State<TabApp> createState() => _CurrencyConvertorTabApp();
}

class _CurrencyConvertorTabApp extends State<TabApp> {
  final TextEditingController texteditingcotroller = TextEditingController();
  final TextEditingController texteditingcotroller2 = TextEditingController();
  final TextEditingController texteditingcotroller3 = TextEditingController();
  double result1 = 0;
  double result2 = 0;
  double result3 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                bottom: const TabBar(tabs: [
                  Tab(
                    text: 'US DOLLAR',
                  ),
                  Tab(text: 'EURO'),
                  Tab(text: 'DIRHAM'),
                ]),
                title: const Text("CURRENCY CONVERTOR"),
                centerTitle: true,
              ),
              body: TabBarView(children: [
                //first
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('INR ${result1.toString()}',
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: texteditingcotroller,
                          style: const TextStyle(
                            color: Colors.black87,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Please Enter the amount in USD',
                            hintStyle: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
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
                              result1 =
                                  double.parse(texteditingcotroller.text) *
                                      82.87;
                            });
                          },
                          style: const ButtonStyle(
                            elevation: MaterialStatePropertyAll(15),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.amber),
                            fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                          ),
                          child: const Text('CONVERT'))
                    ],
                  ),
                ),
                //second tab
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('INR ${result2.toString()}',
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: texteditingcotroller2,
                          style: const TextStyle(
                            color: Colors.black87,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Please Enter the amount in Euro',
                            hintStyle: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
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
                              result2 =
                                  double.parse(texteditingcotroller2.text) *
                                      90.02;
                            });
                          },
                          style: const ButtonStyle(
                            elevation: MaterialStatePropertyAll(15),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.amber),
                            fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                          ),
                          child: const Text('CONVERT'))
                    ],
                  ),
                ),
                //third tab
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('INR ${result3.toString()}',
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: texteditingcotroller3,
                          style: const TextStyle(
                            color: Colors.black87,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Please Enter the amount in Dirham',
                            hintStyle: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
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
                              result3 =
                                  double.parse(texteditingcotroller3.text) *
                                      22.58;
                            });
                          },
                          style: const ButtonStyle(
                            elevation: MaterialStatePropertyAll(15),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.amber),
                            fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                          ),
                          child: const Text('CONVERT'))
                    ],
                  ),
                )
              ]),
            )));
  }
}
