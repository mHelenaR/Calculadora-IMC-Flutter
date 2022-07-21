// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, file_names

import 'variaveis.dart';

class CalculadoraIMC {
  var alturaCalc, pesoCalc, calc;

  calcularImc(double altura, double peso) {
    calc = (peso / (altura * altura));
    return calc;
  }

  imprimeCalculo() {
    double resultado = calcularImc(alturaCalc, pesoCalc);

    if (resultado < 16) {
      print('Magreza grave');
    } else if (resultado < 17) {
      print('Magreza moderada');
    } else if (resultado < 18.5) {
      print('Magreza leve');
    } else if (resultado < 25) {
      print('Saudável');
    } else if (resultado < 30) {
      print('Sobrepeso');
    } else if (resultado < 35) {
      print('Obesidade – GRAU I');
    } else if (resultado < 40) {
      print('Obesidade – GRAU II | Severa');
    } else {
      print('Obesidade – GRAU III | Mórbida');
    }
  }
}
