
import 'package:flutter/material.dart';

class TituloWidget extends StatelessWidget {
  String texto;

  TituloWidget(this.texto);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Text(
        texto,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
