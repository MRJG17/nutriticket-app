import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NutriTicket'),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          child: Text(
            '¡Hola Mundo! Próximo: OCR de tickets',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}