import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/mercado_provider.dart';
import '../widgets/produto_card.dart';
import 'adicionar_produto_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mercado = Provider.of<MercadoProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('🛒 Meu Mercado')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Produtos pendentes: ${mercado.quantidadePendentes}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mercado.produtos.length,
              itemBuilder: (_, index) {
                return ProdutoCard(produto: mercado.produtos[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AdicionarProdutoPage()),
          );
        },
      ),
    );
  }
}