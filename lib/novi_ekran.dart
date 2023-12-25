import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  List<Color> boje = [Colors.black, Colors.green, Colors.yellow, Colors.red, Colors.blue, Colors.pink];
  int index = 0;
@override
  void initState() {

    super.initState();
  }
  final dio = Dio()..options.baseUrl = 'https://www.swapi.tech/api/';

  void getHttp() async {
    final response = await dio.get('people');

    print(response.data['results'][1]);
  }
  void dohvatiSaNeta(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('Izaberi boju Nikola'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.width * 0.8,
            margin: const EdgeInsets.all(50.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: boje[index],
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (index == 0) {
                            index = boje.length -1;
                          } else {
                            index = index -1;
                          }
                        });
                      },
                      child: const Text("Nazad", style: TextStyle(color: Colors.white)),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (index == boje.length - 1) {
                            index = 0;
                          } else {
                            index = index + 1;
                          }
                        });
                      },
                      child: const Text("Napred",style:TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
        Row(
          children: [
            TextButton(onPressed:getHttp, child: Text("test")),
            TextButton(onPressed:getHttp, child: Text("test")),
            TextButton(onPressed:getHttp, child: Text("test")),
          ],
        ),
    );
  }
}
