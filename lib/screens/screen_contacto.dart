import 'package:flutter/material.dart';

class ScreenContacto extends StatelessWidget {
  const ScreenContacto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
      ),
      body: const Center(
        child: Text('Contacto'),
      ),
    );
  }
}