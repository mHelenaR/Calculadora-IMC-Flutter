import 'dart:io';

import 'metodosDart.dart';

void main() {
  // criação de objetos
  CalculadoraIMC entradaUm = new CalculadoraIMC();
  var entrada = CalculadoraIMC();

  // dart sempre recebe string, necessário converter
  print('Digite seu peso:');
  var peso = entrada.pesoCalc = double.parse(stdin.readLineSync() ?? "");

  print('Digite sua altura:');
  var altura = entrada.alturaCalc = double.parse(stdin.readLineSync() ?? "");

  entrada.calcularImc(altura, peso);

  print('\n');
  entrada.imprimeCalculo();
}
