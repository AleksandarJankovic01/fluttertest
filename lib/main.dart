import 'package:flutter/material.dart';
import 'package:fluttertest/proizvod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pekara ',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  TextStyle textStyle({Color color = Colors.black54}) {
    return TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: const Text(
        "Pekara ",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const <Widget>[
          Proizvod(
            'Pica',
            cena: 200,
            ikona: Icon(Icons.local_pizza),
          ),
          Proizvod(
            'Burek',
            cena: 170,
            ikona: Icon(Icons.join_left_sharp),
          ),
          Proizvod(
            'Peciva',
            cena: 100,
            ikona: Icon(Icons.kebab_dining_outlined),
          ),
          Proizvod(
            'Torte',
            cena: 300,
            ikona: Icon(Icons.cake),
          ),
          Proizvod(
            'Pita',
            ikona: Icon(Icons.pie_chart_outline),
          ),
        ],
      ),
    );
  }
}
