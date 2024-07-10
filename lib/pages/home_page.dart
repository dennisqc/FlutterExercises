import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Slider(
                  value: sliderValue,
                  min: 0,
                  max: 100,
                  onChanged: (mandarina) {
                    sliderValue = mandarina;
                    print(mandarina);
                    setState(() {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
