import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:imcappg12/models/imc_model.dart';
import 'package:imcappg12/widgets/slider_widget.dart';

class ImcPage extends StatefulWidget {
  const ImcPage({super.key});

  @override
  State<ImcPage> createState() => ImcPageState();
}

class ImcPageState extends State<ImcPage> {
  double altura = 0, peso = 0, imcResut = 0;
  // Map<String, dynamic>? selectectImcMap;

  ImcModel? selectedImcModel;

  void seleccionImcMap() {
    if (imcResut > 0 && imcResut < 18.5) {
      selectedImcModel = imcModelList[0];
    } else if (imcResut >= 18.5 && imcResut <= 24.9) {
      selectedImcModel = imcModelList[1];
    } else if (imcResut >= 25.0 && imcResut <= 29.9) {
      selectedImcModel = imcModelList[2];
    } else {
      selectedImcModel = imcModelList[3];
    }
  }

  double roundedDecimal(double number) {
    return double.parse(number.toStringAsFixed(2));
  }

  void calcularImc() {
    imcResut = roundedDecimal(peso / ((altura * altura) / 10000));
    print(imcResut);
  }

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
              unidadMedida: "Cm.",
              onChanged: (nuevoValor) {
                altura = roundedDecimal(nuevoValor);
                setState(() {});
              },
            ),
            SliderWidget(
              valor: peso,
              title: "Peso",
              unidadMedida: "Kg",
              onChanged: (nuevoValor) {
                peso = roundedDecimal(nuevoValor);
                setState(() {});
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  calcularImc();
                  seleccionImcMap();
                  setState(() {});
                },
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
              imcResut.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(selectedImcModel?.title ?? "-"),
            SizedBox(height: 34),
            Text(selectedImcModel?.recomendation ?? "-"),
            selectedImcModel == null
                ? Text("Realiza el calculo para ver el resultado")
                : SvgPicture.asset(
                  "assets/svg/${selectedImcModel!.pathImage}.svg",
                  width: MediaQuery.of(context).size.width / 1.5,
                  // color: Colors.red,
                ),
          ],
        ),
      ),
    );
  }
}
