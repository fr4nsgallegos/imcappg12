import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double valor = 8.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IMC APP")),
      body: Column(
        children: [
          Slider(
            max: 10,
            min: 7,
            activeColor: Colors.red,
            inactiveColor: Colors.amber,
            value: valor,
            thumbColor: Colors.green,
            onChanged: (value) {
              valor = value;
              print(value);
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
