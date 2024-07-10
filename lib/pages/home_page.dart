import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 0;
  String textLorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis finibus interdum. Donec finibus dapibus est. Aenean sit amet metus massa. Donec eget orci id ligula dignissim scelerisque. Suspendisse vitae efficitur nisl. Mauris tincidunt rutrum enim. Integer elementum nunc pharetra quam pulvinar fringilla. Vestibulum ac ex vestibulum, faucibus purus eu.";
  double opacityValue = 0;
  double redColor = 150;
  double greenColor = 150;
  double blueColor = 120;
  bool isUnderline = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  textLorem,
                  style: TextStyle(
                      decoration: isUnderline == true
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      //  decoration: TextDecoration.lineThrough,
                      color: Color.fromRGBO(redColor.toInt(),
                          greenColor.toInt(), blueColor.toInt(), opacityValue)),
                ),
                Slider(
                    value: opacityValue,
                    min: 0,
                    max: 1,
                    activeColor: Colors.red,
                    inactiveColor: Colors.blue,
                    thumbColor: Colors.green,
                    onChanged: (opacidad) {
                      opacityValue = opacidad;
                      print(opacidad);
                      setState(() {});
                    }),
                Slider(
                    value: redColor,
                    min: 0,
                    max: 500,
                    activeColor: Colors.red,
                    inactiveColor: Colors.blue,
                    thumbColor: Colors.green,
                    onChanged: (red) {
                      redColor = red;
                      print(red);
                      setState(() {});
                    }),
                Slider(
                    value: blueColor,
                    min: 0,
                    max: 500,
                    activeColor: Colors.red,
                    inactiveColor: Colors.blue,
                    thumbColor: Colors.green,
                    onChanged: (blue) {
                      blueColor = blue;
                      print(blue);
                      setState(() {});
                    }),
                Slider(
                    value: greenColor,
                    min: 0,
                    max: 500,
                    activeColor: Colors.red,
                    inactiveColor: Colors.blue,
                    thumbColor: Colors.green,
                    onChanged: (green) {
                      greenColor = green;
                      print(green);
                      setState(() {});
                    }),
                ElevatedButton(
                    onPressed: () {
                      redColor = Random().nextDouble() * 256;
                      greenColor = Random().nextDouble() * 256;
                      blueColor = Random().nextDouble() * 256;
                      setState(() {});
                    },
                    child: Text("Shuffle")),
                CheckboxListTile(
                    title: Text("Se tacha?"),
                    value: isUnderline,
                    onChanged: (juanito) {
                      isUnderline = juanito!;
                      setState(() {});
                    }),
                CheckboxListTile(
                    title: Text("Underline?"),
                    value: isUnderline,
                    onChanged: (juanito) {
                      isUnderline = juanito!;
                      setState(() {});
                    }),
                CheckboxListTile(
                    title: Text("Overline?"),
                    value: isUnderline,
                    onChanged: (juanito) {
                      isUnderline = juanito!;
                      setState(() {});
                    }),
                CheckboxListTile(
                    title: Text("LineThrought?"),
                    value: isUnderline,
                    onChanged: (juanito) {
                      isUnderline = juanito!;
                      setState(() {});
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
