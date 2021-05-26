// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on _MainStore, Store {
  final _$nomeAtom = Atom(name: '_MainStore.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$agenciaAtom = Atom(name: '_MainStore.agencia');

  @override
  String get agencia {
    _$agenciaAtom.reportRead();
    return super.agencia;
  }

  @override
  set agencia(String value) {
    _$agenciaAtom.reportWrite(value, super.agencia, () {
      super.agencia = value;
    });
  }

  @override
  String toString() {
    return '''
nome: ${nome},
agencia: ${agencia}
    ''';
  }
}
