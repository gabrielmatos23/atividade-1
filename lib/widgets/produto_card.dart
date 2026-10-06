import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/produto.dart';
import '../providers/mercado_provider.dart';

class ProdutoCard extends StatelessWidget {
  final Produto produto;

  ProdutoCard({required this.produto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          produto.nome,
          style: TextStyle(
            decoration: produto.comprado
                ? TextDecoration.lineThrough
                : null,
          ),
        ),
        trailing: Checkbox(
          value: produto.comprado,
          onChanged: (_) {
            Provider.of<MercadoProvider>(context, listen: false)
                .alterarStatus(produto);
          },
        ),
      ),
    );
  }
}