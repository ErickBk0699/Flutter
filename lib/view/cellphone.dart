import 'package:flutter/material.dart';

class Cellphone extends StatelessWidget {
  const Cellphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Car 4'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text('Hola Car 4'),
      ),
    );
  }
}
