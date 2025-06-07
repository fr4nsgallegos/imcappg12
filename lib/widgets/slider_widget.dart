import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  double valor;
  String title;

  SliderWidget({required this.valor, required this.title});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text(widget.title),
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: widget.valor.toString(),
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
            value: widget.valor,
            onChanged: (double value) {
              widget.valor = value;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
