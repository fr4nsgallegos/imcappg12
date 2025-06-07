import 'package:flutter/material.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({super.key});

  @override
  State<ImcPage> createState() => ImcPageState();
}

class ImcPageState extends State<ImcPage> {
  double altura = 0, peso = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcular IMC"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: [
                  Text("Altura"),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: altura.toString(),
                          style: TextStyle(fontSize: 28),
                        ),
                        TextSpan(text: "cm", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  Slider(
                    min: 0,
                    max: 200,
                    activeColor: Colors.blue,
                    value: altura,
                    onChanged: (double value) {
                      altura = value;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text("Peso"),
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: peso.toString(),
                        style: TextStyle(fontSize: 28),
                      ),
                      TextSpan(text: "Kg", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Slider(
                  min: 0,
                  max: 200,
                  activeColor: Colors.blue,
                  value: peso,
                  onChanged: (double value) {
                    peso = value;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
