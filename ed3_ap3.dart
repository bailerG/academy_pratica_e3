import 'dart:math';

void main() {
  final aleatorio = Random();

  final listaRaios =
      List.generate(10, (index) => aleatorio.nextDouble() * 99 - 1);

  for (final raio in listaRaios) {
    final area = areaCirculo(raio);
    final perimetro = perimetroCirculo(raio);
    print(
        "Raio: ${raio.toStringAsFixed(2)}, Area: ${area.toStringAsFixed(2)}, Perímetro: ${perimetro.toStringAsFixed(2)} ");
  }
}

double areaCirculo(double raio) {
  return (raio * raio) * pi;
}

double perimetroCirculo(double raio) {
  return 2 * pi * raio;
}
