import 'package:flutter/material.dart';

class CounterScreenTwo extends StatefulWidget {
  const CounterScreenTwo({Key? key}) : super(key: key);

  @override
  State<CounterScreenTwo> createState() => _CounterScreenTwoState();
}

class _CounterScreenTwoState extends State<CounterScreenTwo> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      count--;
    });
  }

  void restart() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen Two'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Contador',
                style: TextStyle(color: Colors.blue, fontSize: 35)),
            Text('$count', style: const TextStyle(fontSize: 30))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ButtonGroup(
          increment: increment, decrement: decrement, restart: restart),
    );
  }
}

class ButtonGroup extends StatelessWidget {
  final Function increment;
  final Function decrement;
  final Function restart;
  const ButtonGroup({
    Key? key,
    required this.increment,
    required this.decrement,
    required this.restart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: FloatingActionButton(
                child: const Icon(Icons.remove),
                onPressed: () {
                  decrement();
                })),
        Expanded(
            child: FloatingActionButton(
                child: const Icon(Icons.restore), onPressed: () => restart())),
        Expanded(
            child: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  increment();
                })),
        const SizedBox(height: 10),
      ],
    );
  }
}
