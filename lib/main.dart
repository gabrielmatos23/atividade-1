import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/mercado_provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => MercadoProvider(),
      child: MeuMercado(),
    ),
  );
}

class MeuMercado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Mercado',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}