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

  bool isOverline = false, isUnderline = false, isLineThrough = false;

  Widget buildTextDecorationCheck(
    String title,
    bool value,
    IconData icondata,
    Function(bool) onChangedFunction,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CheckboxListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        title: Text(title),
        subtitle: Text("Aplicar $title"),
        secondary: Icon(icondata),
        checkColor: Colors.blue,
        tileColor: Colors.blueGrey,
        value: value,
        onChanged: (bool? mandarina) {
          onChangedFunction(mandarina!);
          setState(() {});
          // print(isChecked);
        },
      ),
    );
  }

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
                decoration: TextDecoration.combine([
                  if (isUnderline) TextDecoration.underline,
                  if (isOverline) TextDecoration.overline,
                  if (isLineThrough) TextDecoration.lineThrough,
                ]),
                // TextDecoration.combine([
                //   TextDecoration.lineThrough,
                //   TextDecoration.overline,
                //   TextDecoration.underline,
                // ]),
                // isOverline ? TextDecoration.overline : TextDecoration.none,
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
            buildTextDecorationCheck(
              "Overline",
              isOverline,
              Icons.format_overline,
              (val) {
                isOverline = val;
              },
            ),
            buildTextDecorationCheck(
              "Underline",
              isUnderline,
              Icons.format_underline,
              (val) {
                isUnderline = val;
              },
            ),
            buildTextDecorationCheck(
              "lineTrougth",
              isLineThrough,
              Icons.line_axis,
              (val) {
                isLineThrough = val;
              },
            ),
          ],
        ),
      ),
    );
  }
}
