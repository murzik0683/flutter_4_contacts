import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Contacts"),
            centerTitle: true,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            color: const Color.fromARGB(255, 238, 241, 205),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [for (int i = 0; i < 5; i++) const Contacts()],
                ),
              ],
            ),
          )),
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 240, 233, 172),
          border: Border.all(color: Colors.yellowAccent, width: 5),
          borderRadius: BorderRadius.circular(30.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              width: 80,
              height: 80,
              child: const Image(
                image: AssetImage('assets/images/winnie-pooh.png'),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  width: 155,
                  height: 40,
                  child: const Text('Винни Пух',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MarckScript',
                          fontStyle: FontStyle.normal))),
              const Text('+375(44)570-52-92'),
              const Text('01.01.2022')
            ],
          )
        ],
      ),
    );
  }
}
