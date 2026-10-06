import 'package:flutter/material.dart';
import '../models/produto.dart';

class MercadoProvider extends ChangeNotifier {
  List<Produto> produtos = [
    Produto(nome: 'Arroz'),
    Produto(nome: 'Feijão'),
    Produto(nome: 'Leite'),
  ];

  void adicionarProduto(String nome) {
    if (nome.isNotEmpty) {
      produtos.add(Produto(nome: nome));
      notifyListeners();
    }
  }

  void alterarStatus(Produto produto) {
    produto.comprado = !produto.comprado;
    notifyListeners();
  }

  int get quantidadePendentes =>
      produtos.where((produto) => !produto.comprado).length;
}