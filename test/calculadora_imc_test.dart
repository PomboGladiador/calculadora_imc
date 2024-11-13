

import 'package:calculadora_imc/calculo.dart';
import 'package:calculadora_imc/classes.dart';
import 'package:test/test.dart';

void main() {
  group('Testes da Classe Pessoa', () {
    test('Teste de criação de Pessoa', () {
      final pessoa = Pessoa(nome: 'Ana', peso: 60.0, altura: 1.65);
      expect(pessoa.nome, 'Ana');
      expect(pessoa.peso, 60.0);
      expect(pessoa.altura, 1.65);
    });

    test('Teste de cálculo do IMC', () {
      final pessoa = Pessoa(nome: 'Ana', peso: 60.0, altura: 1.65);
      final imc = calcularIMC(pessoa);
      expect(imc, closeTo(22.04, 0.01));
    });
  });
}
