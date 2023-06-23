import 'dart:math';

void main() {
  final resultadoAB = funcaoA(funcaoB);
  final resultadoAC = funcaoA(funcaoC);

  print("A(B) = $resultadoAB");
  print("A(C) = $resultadoAC");
}

int funcaoA(int Function(int) funcaoEscolhida) {
  final aleatorio = Random();

  final resultado1 = funcaoEscolhida(aleatorio.nextInt(33));
  final resultado2 = funcaoEscolhida(aleatorio.nextInt(33));

  return resultado1 + resultado2;
}

int funcaoB(int numero) {
  return numero * numero;
}

int funcaoC(int numero) {
  return numero * 2;
}
