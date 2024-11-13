
import 'dart:math';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa({required this.nome, required this.peso, required this.altura});

  double calcularIMC() {
    return peso / pow(altura, 2);
  }
}

// um arquivo criado para definir as classes