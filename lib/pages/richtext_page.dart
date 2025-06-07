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
            RichText(
              text: TextSpan(
                text: "Texto base",
                style: TextStyle(color: Colors.black, fontSize: 25),
                children: [
                  TextSpan(
                    text: " En negrita",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: " Y en Roojo",
                    style: TextStyle(color: Colors.red),
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
