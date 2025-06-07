import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imcappg12/widgets/slider_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SliderWidget(
              valor: altura,
              title: "Altura",
              unidadMedida: "Kg",
              onChanged: (nuevoValor) {
                altura = double.parse(nuevoValor.toStringAsFixed(2));
                setState(() {});
              },
            ),
            SliderWidget(
              valor: peso,
              title: "Peso",
              unidadMedida: "Cm",
              onChanged: (nuevoValor) {
                peso = double.parse(nuevoValor.toStringAsFixed(2));
                setState(() {});
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadowColor: Colors.orange,
                  elevation: 8,
                ),
                child: Text("Calcular"),
              ),
            ),
            Divider(height: 36),
            Text(
              "20.1",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text("Normal"),
            SizedBox(height: 34),
            Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a asdasd asdasd asd asas dasdard McClintock,",
            ),
            SvgPicture.asset(
              "assets/svg/normal.svg",
              width: MediaQuery.of(context).size.width / 1.5,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
