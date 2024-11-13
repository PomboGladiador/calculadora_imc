
import 'dart:math';
import 'package:calculadora_imc/classes.dart';

double calcularIMC(Pessoa pessoa) {
  return pessoa.peso / pow(pessoa.altura, 2);
}
