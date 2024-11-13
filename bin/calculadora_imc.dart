
import 'dart:io';
import 'package:calculadora_imc/calculo.dart';
import 'package:calculadora_imc/classes.dart';

void main() {
  try {
    print('Digite seu nome:');
    String? nome = stdin.readLineSync();
    if (nome == null || nome.isEmpty) {
      throw FormatException('Nome não pode ser vazio');
    }

    print('Digite seu peso (kg):');
    String? pesoStr = stdin.readLineSync();
    if (pesoStr == null || pesoStr.isEmpty) {
      throw FormatException('Peso não pode ser vazio');
    }
    double peso = double.parse(pesoStr);

    print('Digite sua altura (metros):');
    String? alturaStr = stdin.readLineSync();
    if (alturaStr == null || alturaStr.isEmpty) {
      throw FormatException('Altura não pode ser vazia');
    }
    double altura = double.parse(alturaStr);

    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    double imc = calcularIMC(pessoa);
    print('Nome: ${pessoa.nome}, IMC: ${imc.toStringAsFixed(2)}');
  } catch (e) {
    print('Erro: reinicie o programa');
  }

  // Pausa para manter o terminal aberto
  print('Pressione Enter para sair...');
  stdin.readLineSync();
}
