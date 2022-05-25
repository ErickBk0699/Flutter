import 'package:flutter/material.dart';

class ContadorView extends StatelessWidget {
  const ContadorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 8.0,
        title: const Text('Hola Car 4'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Home view', style: TextStyle(fontSize: 40)),
            Text('$count', style: const TextStyle(fontSize: 30)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
