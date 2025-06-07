class ImcModel {
  String title;
  String recomendation;
  String pathImage;

  ImcModel(this.title, this.recomendation, this.pathImage);
}

List<ImcModel> imcModelList = [
  ImcModel(
    "Bajo peso",
    "Se debe alimentar con los nutrientes necesarios",
    "delgadez",
  ),
  ImcModel("Normal", "El IMC  es normal, manten tu dieta balanceada", "normal"),
  ImcModel(
    "Sobrepeso",
    "Salir a correr 1 o 2 veces a la semana y toma agua",
    "sobrepeso",
  ),
  ImcModel(
    "Obesidad",

    "Realiza una dieta balanceada y haz ejercicio 4 o 5 vveces a la semana",
    "obesidad",
  ),
];
