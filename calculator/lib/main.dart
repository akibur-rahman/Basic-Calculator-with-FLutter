import 'package:flutter/material.dart';

import 'StartScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: IntroScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  var no1; //stores number form 1st text field
  // ignore: prefer_typing_uninitialized_variables
  var no2; //stores number from 2nd text field
  dynamic result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Basic Calculator')),
      ),
      body: Container(
          color: Colors.blue.shade50, //light shade of blue
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        no1 = int.parse(no1Controller.text.toString());
                        no2 = int.parse(no2Controller.text.toString());
                        result = no1 + no2;
                        setState(() {});
                      },
                      child: const Text('+'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        no1 = int.parse(no1Controller.text.toString());
                        no2 = int.parse(no2Controller.text.toString());
                        result = no1 - no2;
                        setState(() {});
                      },
                      child: const Text('-'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        no1 = int.parse(no1Controller.text.toString());
                        no2 = int.parse(no2Controller.text.toString());
                        result = no1 * no2;
                        setState(() {});
                      },
                      child: const Text('x'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        no1 = int.parse(no1Controller.text.toString());
                        no2 = int.parse(no2Controller.text.toString());
                        result = no1 / no2;
                        setState(() {});
                      },
                      child: const Text('/'),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.all(11.0),
                  child: Text(
                    "Result: ${result.toStringAsFixed(2)}",
                    style: const TextStyle(fontSize: 40),
                  ),
                )
              ],
            )),
          )),
    );
  }
}
