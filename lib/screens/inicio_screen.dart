import 'package:flutter/material.dart';
import 'tableros_screen.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  final TextEditingController _controller = TextEditingController();

  void _navigateToGrilla() {
    int? numTableros = int.tryParse(_controller.text);
    if (numTableros != null && numTableros > 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TablerosScreen(numTableros: numTableros),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, Ingrese un número válido')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Juego de Cacho')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Número de tableros'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _navigateToGrilla,
              child: const Text('Ver Tableros'),
            ),
          ],
        ),
      ),
    );
  }
}
