import 'package:flutter/material.dart';
import '../widgets/tableros_widget.dart';

class TablerosScreen extends StatelessWidget {
  final int numTableros;

  TablerosScreen({required this.numTableros});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tableros de Cacho')),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
          ),
          itemCount: numTableros,
          itemBuilder: (context, index) {
            return TablerosWidget(tableroNum: index + 1);
          },
        ),
      ),
    );
  }
}
