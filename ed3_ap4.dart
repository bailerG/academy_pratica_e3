import 'dart:math';

void main() {
  final aleatorio = Random();

  final listaNumeros =
      List.generate(15, (index) => aleatorio.nextInt(5000) + 1);

  converterNumeros(listaNumeros);
}

void converterNumeros(List<int> lista) {
  lista.sort();

  for (final numero in lista) {
    print(
        'Decimal: $numero, Binario: ${toBinario(numero)}, Octal: ${toOctal(numero)}, Hexadecimal: ${toHexadecimal(numero)}');
  }
}

String toBinario(int numero) {
  return numero.toRadixString(2);
}

String toOctal(int numero) {
  return numero.toRadixString(8);
}

String toHexadecimal(int numero) {
  return numero.toRadixString(16);
}
