import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Quadrado(),
  ));
}

class Quadrado extends StatefulWidget {
  @override
  _Quadrado createState() => _Quadrado();
}

class _Quadrado extends State<Quadrado> {
  Color _Cor = Colors.red;
  double _Tam = 50;
  void _MudarTamECor() {
    final random = Random();
    setState(() {
      int R = random.nextInt(256) as int;
      int G = random.nextInt(256) as int;
      int B = random.nextInt(256) as int;
      _Cor = Color.fromRGBO(
        R,
        G,
        B,
        1,
      );
      _Tam = random.nextInt(200).toDouble() + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _MudarTamECor,
          child: AnimatedContainer(
            width: _Tam,
            height: _Tam,
            color: _Cor,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }
}
