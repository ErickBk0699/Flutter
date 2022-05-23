import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
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
