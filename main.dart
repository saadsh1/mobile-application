import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var Names=['saad','noor','zohaib','lala','talha','fakher'];
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Flutter App",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.black,
          titleTextStyle: const TextStyle(color: Colors.white),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          return  ListTile(
leading: Text('${index+1}'),
title: Text(Names[index]),
subtitle: Text('Number'),
trailing: Icon(Icons.add),

          );
        },
        itemCount: Names.length,
        separatorBuilder: (context,index){
          return Divider(height: 20,thickness: 1,);
        }
        )
        );
  }
}
