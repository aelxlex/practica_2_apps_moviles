import 'package:flutter/material.dart';
import 'screens/inicio_screen.dart';

void main() {
  runApp(const CachoApp());
}

class CachoApp extends StatelessWidget {
  const CachoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Juego Cacho',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InicioScreen(),
    );
  }
}
