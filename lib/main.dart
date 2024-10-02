import 'package:flutter/material.dart';

void main() {
  runApp(const Cacho());
}

class Cacho extends StatelessWidget {
  const Cacho({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cach(),
    );
  }
}

class Cach extends StatefulWidget {
  const Cach({super.key});

  @override
  State<Cach> createState() => _CachState();
}

class _CachState extends State<Cach> {
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
      if (balas >= 5) {
        balas = 0;
      } else {
        balas++;
      }
    });
  }

  void btnTontos() {
    setState(() {
      if (tontos >= 10) {
        tontos = 0;
      } else {
        tontos += 2;
      }
    });
  }

  void btnTrikas() {
    setState(() {
      if (trikas >= 15) {
        trikas = 0;
      } else {
        trikas += 3;
      }
    });
  }

  void btnCuadras() {
    setState(() {
      if (cuadras >= 20) {
        cuadras = 0;
      } else {
        cuadras += 4;
      }
    });
  }

  void btnQuinas() {
    setState(() {
      if (quinas >= 25) {
        quinas = 0;
      } else {
        quinas += 5;
      }
    });
  }

  void btnSenas() {
    setState(() {
      if (senas >= 30) {
        senas = 0;
      } else {
        senas += 6;
      }
    });
  }

  void btnEscalera() {
    setState(() {
      if (escalera >= 25) {
        escalera = 0;
      } else {
        if (escalera == 20) {
          escalera += 5;
        } else {
          escalera += 20;
        }
      }
    });
  }

  void btnFull() {
    setState(() {
      if (full >= 35) {
        full = 0;
      } else {
        if (full == 30) {
          full += 5;
        } else {
          full += 30;
        }
      }
    });
  }

  void btnPoker() {
    setState(() {
      if (poker >= 45) {
        poker = 0;
      } else {
        if (poker == 40) {
          poker += 5;
        } else {
          poker += 40;
        }
      }
    });
  }

  void btnUlt() {
    setState(() {
      if (ult >= 50) {
        ult = 0;
      } else {
        ult = 50;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CACHO'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () => btnBalas(), child: Text('$balas')),
                ElevatedButton(
                    onPressed: () => btnEscalera(), child: Text('$escalera')),
                ElevatedButton(
                    onPressed: () => btnCuadras(), child: Text('$cuadras')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () => btnTontos(), child: Text('$tontos')),
                ElevatedButton(
                    onPressed: () => btnFull(), child: Text('$full')),
                ElevatedButton(
                    onPressed: () => btnQuinas(), child: Text('$quinas')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () => btnTrikas(), child: Text('$trikas')),
                ElevatedButton(
                    onPressed: () => btnPoker(), child: Text('$poker')),
                ElevatedButton(
                    onPressed: () => btnSenas(), child: Text('$senas')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(onPressed: () => btnUlt(), child: Text('$ult')),
              ],
            ),
          ],
        ));
  }
}