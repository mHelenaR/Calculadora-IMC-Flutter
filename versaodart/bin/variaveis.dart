// ignore_for_file: prefer_typing_uninitialized_variables
import 'dart:ffi';

class TiposDeclaracao {
  // numericos
  int variavelTeste2 = 0;
  double variavelTeste5 = 0.0;
  late Float variavelTeste6;
  late num variavelTeste12;
  /* o modificador late define que a variavel será inicializada 
  * durante a execução do codigo
  */

  //listerais
  String variavelTeste3 = '';

  //Dinâmicos
  var variavelTeste;
  dynamic variavelTeste1;

  //Lógicos
  bool variavelTeste4 = false;

  //outros tipos
  static const variavelTeste7 = 0;
  final variavelTeste8 = 0;
  void variavelTeste9;
  late Map variavelTeste10;
  late List variavelTeste11;
}

class AtributosPessoa {
  /* Há duas formas de inicializar as variáveis
  * o sinal ? define que as variaveis nulas
  * receberão valor futuramente
  */

  String nomePessoa = '';
  String? nomePessoa1;

  int idadePessoa = 0;
  int? idadePessoa1;

  double alturaPessoa = 0;
  double? alturaPessoa1;

  double pesoPessoa = 0;
  double? pesoPessoa1;
}
