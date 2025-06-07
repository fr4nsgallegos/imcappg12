import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double valor = 8.5;
  double red = 0, green = 0, blue = 0, opacity = 1.0;
  bool? isChecked = false;
  double fontSize = 15;

  bool isOverline = false;

  Widget buildSliderRow(
    double variable,
    String title,
    String tipo,
    Color color,
    Function(double) onChangedFunction,
  ) {
    //TIPO c-color , t-tamaño, o-opacidad
    return Row(
      children: [
        Text(title),
        Expanded(
          child: Slider(
            max:
                tipo == 'c'
                    ? 255
                    : tipo == 't'
                    ? 30
                    : 1,
            min:
                tipo == 'c'
                    ? 0
                    : tipo == 't'
                    ? 5
                    : 0,
            activeColor: color,
            inactiveColor: Colors.grey,
            value: variable,
            thumbColor: color,
            onChanged: (value) {
              onChangedFunction(value);
              setState(() {});
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IMC APP")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut ",
              style: TextStyle(
                fontSize: fontSize,
                color: Color.fromRGBO(
                  red.toInt(),
                  green.toInt(),
                  blue.toInt(),
                  opacity,
                ),
                decoration:
                    isOverline ? TextDecoration.overline : TextDecoration.none,
              ),
            ),
            buildSliderRow(fontSize, "Tamaño", "t", Colors.cyan, (val) {
              fontSize = val;
            }),
            buildSliderRow(red, "Red", "c", Colors.red, (val) {
              red = val;
            }),
            buildSliderRow(green, "Green", "c", Colors.green, (val) {
              green = val;
            }),
            buildSliderRow(blue, "Blue", "c", Colors.blue, (val) {
              blue = val;
            }),
            buildSliderRow(opacity, "Opacity", "o", Colors.black, (val) {
              opacity = val;
            }),

            CheckboxListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              title: Text("Overline"),
              subtitle: Text("Aplicar Overline"),
              secondary: Icon(Icons.format_overline),
              checkColor: Colors.blue,
              tileColor: Colors.blueGrey,
              value: isOverline,
              onChanged: (bool? mandarina) {
                isOverline = mandarina ?? false;
                // print(isChecked);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
