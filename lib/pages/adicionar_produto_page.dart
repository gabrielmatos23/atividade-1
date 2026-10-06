import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/mercado_provider.dart';

class AdicionarProdutoPage extends StatelessWidget {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Produto')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Nome do produto',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Salvar'),
              onPressed: () {
                Provider.of<MercadoProvider>(context, listen: false)
                    .adicionarProduto(controller.text);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}