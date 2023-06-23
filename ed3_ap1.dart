import 'dart:math';

void main() {
  final aleatorio = Random();

  final lista1 = List.generate(5, (index) => aleatorio.nextInt(100));
  final lista2 = List.generate(5, (index) => aleatorio.nextInt(100));

  imprimeLista(lista1);
  imprimeLista(lista2);

  final listaResultado = somaListas(lista1, lista2);
  imprimeLista(listaResultado);
}

void imprimeLista(List<int> lista) {
  print("Lista: ${lista.join(", ")}");
}

List<int> somaListas(List<int> lista1, List<int> lista2) {
  if (lista1.length != lista2.length) {
    return [];
  }

  final listaResultado = <int>[];

  for (var indice = 0; indice < lista1.length; indice++) {
    final numeroLista1 = lista1[indice];
    final numeroLista2 = lista2[indice];
    final soma = numeroLista1 + numeroLista2;

    print("$numeroLista1 + $numeroLista2");

    listaResultado.add(soma);
  }

  return listaResultado;
}
