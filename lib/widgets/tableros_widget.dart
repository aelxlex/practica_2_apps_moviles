import 'package:flutter/material.dart';

class TablerosWidget extends StatefulWidget {
  final int tableroNum;

  TablerosWidget({required this.tableroNum});

  @override
  _TablerosWidgetState createState() => _TablerosWidgetState();
}

class _TablerosWidgetState extends State<TablerosWidget> {
  int balas = 0;
  int tontos = 0;
  int trikas = 0;
  int cuadras = 0;
  int quinas = 0;
  int senas = 0;
  int escalera = 0;
  int full = 0;
  int poker = 0;
  int ult = 0;

  void btnBalas() {
    setState(() {
      balas = (balas >= 5) ? 0 : balas + 1;
    });
  }

  void btnTontos() {
    setState(() {
      tontos = (tontos >= 10) ? 0 : tontos + 2;
    });
  }

  void btnTrikas() {
    setState(() {
      trikas = (trikas >= 15) ? 0 : trikas + 3;
    });
  }

  void btnCuadras() {
    setState(() {
      cuadras = (cuadras >= 20) ? 0 : cuadras + 4;
    });
  }

  void btnQuinas() {
    setState(() {
      quinas = (quinas >= 25) ? 0 : quinas + 5;
    });
  }

  void btnSenas() {
    setState(() {
      senas = (senas >= 30) ? 0 : senas + 6;
    });
  }

  void btnEscalera() {
    setState(() {
      escalera = (escalera >= 25) ? 0 : (escalera == 20 ? escalera + 5 : escalera + 20);
    });
  }

  void btnFull() {
    setState(() {
      full = (full >= 35) ? 0 : (full == 30 ? full + 5 : full + 30);
    });
  }

  void btnPoker() {
    setState(() {
      poker = (poker >= 45) ? 0 : (poker == 40 ? poker + 5 : poker + 40);
    });
  }

  void btnUlt() {
    setState(() {
      ult = (ult >= 50) ? 0 : 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(1.0),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Tablero ${widget.tableroNum}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: btnBalas, child: Text('$balas')),
                ElevatedButton(onPressed: btnEscalera, child: Text('$escalera')),
                ElevatedButton(onPressed: btnCuadras, child: Text('$cuadras')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: btnTontos, child: Text('$tontos')),
                ElevatedButton(onPressed: btnFull, child: Text('$full')),
                ElevatedButton(onPressed: btnQuinas, child: Text('$quinas')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: btnTrikas, child: Text('$trikas')),
                ElevatedButton(onPressed: btnPoker, child: Text('$poker')),
                ElevatedButton(onPressed: btnSenas, child: Text('$senas')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: btnUlt, child: Text('$ult')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

