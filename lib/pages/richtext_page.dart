import 'package:flutter/material.dart';

class RichtextPage extends StatefulWidget {
  @override
  State<RichtextPage> createState() => _RichtextPageState();
}

class _RichtextPageState extends State<RichtextPage> {
  bool isImportant = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isImportant = !isImportant;
          setState(() {});
        },
      ),
      appBar: AppBar(title: Text("Rich Text Page")),
      body: Center(
        child: Column(
          children: [
            // RICHTEXT COMÚN
            RichText(
              text: TextSpan(
                text: "Texto base",
                style: TextStyle(color: Colors.black, fontSize: 25),
                children: [
                  TextSpan(
                    text: " En negrita",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: " con underline",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  TextSpan(
                    text: " Y en Roojo",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),

            // SIMULANDO SUBINDICES
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.cyan, fontSize: 50),
                children: [
                  TextSpan(text: "H"),
                  TextSpan(
                    text: "2",
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  TextSpan(text: "O"),
                ],
              ),
            ),
            // texto con imganges
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.orange),
                children: [
                  TextSpan(text: "Texto con imagen: "),
                  WidgetSpan(child: Icon(Icons.star, color: Colors.red)),
                  WidgetSpan(
                    child: Container(width: 20, height: 20, color: Colors.cyan),
                  ),
                  TextSpan(
                    text: " Más texto",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
            ),

            // CON CONDICIONALES
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(text: "Este es un texto "),
                  TextSpan(
                    text: isImportant ? "IMPORTANTE" : "normal",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight:
                          isImportant ? FontWeight.bold : FontWeight.normal,
                      color: isImportant ? Colors.red : Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
