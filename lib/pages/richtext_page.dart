import 'package:flutter/material.dart';

class RichtextPage extends StatelessWidget {
  const RichtextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        ),
      ),
    );
  }
}
