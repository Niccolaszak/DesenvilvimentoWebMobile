import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/tarefas_provider.dart';
import 'pages/tela_lista.dart'; 

void main() {
  runApp(
    // Disponibiliza o Provider para os widgets
    ChangeNotifierProvider(
      create: (context) => TarefasProvider(),
      child: MeuAppTarefas(),
    ),
  );
}

class MeuAppTarefas extends StatelessWidget {
  const MeuAppTarefas({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaLista(),
    );
  }
}