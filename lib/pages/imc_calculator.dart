import 'dart:ffi';

import 'package:flutter/material.dart';

class imcCalculator extends StatefulWidget {
  const imcCalculator({super.key});

  @override
  State<imcCalculator> createState() => _imcCalculatorState();
}

class _imcCalculatorState extends State<imcCalculator> {
  double altura = 41;
  double peso = 40;
  double imc = 0;
  String getCategory(double imc) {
    if (imc < 18.5) {
      return 'Bajo peso';
    } else if (imc >= 18.5 && imc < 24.9) {
      return 'Peso normal';
    } else if (imc >= 25 && imc < 29.9) {
      return 'Sobrepeso';
    } else {
      return 'Obesidad';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  "Altura",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "${altura.toStringAsFixed(2)}cm",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Slider(
                    value: altura,
                    min: 40,
                    max: 200,
                    onChanged: (tall) {
                      altura = tall;
                      setState(() {
                        print(altura);
                      });
                    })
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  "Peso",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "${peso.toStringAsFixed(2)}Kg",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Slider(
                    value: peso,
                    min: 40,
                    max: 150,
                    onChanged: (weight) {
                      peso = weight;
                      setState(() {
                        print(weight);
                      });
                    })
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    imc = peso / ((altura / 100) * (altura / 100));
                    print(imc);
                    setState(() {});
                  },
                  child: Text("Calcular")),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  imc.toStringAsFixed(2),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  getCategory(imc),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
