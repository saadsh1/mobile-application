import 'package:flutter/material.dart';

// ignore: camel_case_types
class currencyConverter extends StatelessWidget {
  const currencyConverter({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(220, 221, 117, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Welcome To flutter',style: TextStyle(fontSize: 40,color: Colors.amber,fontWeight: FontWeight.bold),)],
          ),
        ),
    ),
);
}
}