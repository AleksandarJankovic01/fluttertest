import 'package:flutter/material.dart';
import 'package:fluttertest/dialog_details.dart';
import 'package:fluttertest/novi_ekran.dart';
import 'package:fluttertest/popup.dart';
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
        fontFamily: "Montserrat",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Container(height: 50.0, width: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: Colors.black87,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Pekara Guliver",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Proizvod(
            'Pica',
            [
              DialogDetails(Colors.green, "Capricoza: ", "perat sunka."),
              DialogDetails(Colors.yellow, "Margarita: ", "pelat kackavaj."),
              DialogDetails(Colors.red, "Mexiko: ", "sir,pelat,kulen."),
            ],
            cena: 200,
            ikona: Icons.local_pizza,
          ),
          Proizvod(
            'Burek',
            [
              DialogDetails(Colors.white, "Burek sir: ", "kravlji sir."),
              DialogDetails(Colors.brown, "Burek meso: ", "svinjko meso."),
            ],
            cena: 170,
            ikona: Icons.join_left_sharp,
          ),
          Proizvod(
            'Peciva',
            [
              DialogDetails(Colors.pinkAccent, "Rol Virsla: ", "Svinjska virsla."),
              DialogDetails(Colors.red, "Pecivo: ", "Pica ukus."),
            ],
            cena: 100,
            ikona: Icons.kebab_dining_outlined,
          ),
          Proizvod(
            'Torte',
            [
              DialogDetails(Colors.orangeAccent, "Plazma torta: ", "plazma,mleko."),
              DialogDetails(Colors.brown, "Jafa torta: ", "Jafa,piskote,mleko."),
            ],
            cena: 300,
            ikona: Icons.cake,
          ),
          Proizvod(
            'Pita',
            [
              DialogDetails(Colors.lightGreen, "Pita: ", "sir,spanac."),
              DialogDetails(Colors.white, "Pita: ", "sir."),
            ],
            ikona: Icons.pie_chart_outline,
          ),
          Image.asset("assets/download.jpg"),
        ],
      ),
    );
  }
}
