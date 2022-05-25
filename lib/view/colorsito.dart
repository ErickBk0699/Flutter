import 'package:flutter/material.dart';
import 'dart:math';

/* void main() {
  runApp(const MyApp());
} */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'CAR 4'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Color changeColor() {
    Color color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    if (_counter % 10 == 0) {
      return Colors.black;
    } else {
      return color;
    }
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: TextStyle(
      color: changeColor(),
      fontSize: 20,
    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bienvenido al Car 4 Vannesa:',
              style: TextStyle(
                color: changeColor(),
                fontSize: 20,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.black,
                  ),
            ),
            ElevatedButton(
              style: style,
              onPressed: _decrementCounter,
              child: const Text('-'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: style,
              onPressed: _resetCounter,
              child: const Text('Reiniciar'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: (Colors.black),
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
