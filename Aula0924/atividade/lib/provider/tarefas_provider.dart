import 'package:flutter/material.dart';

// Model: Representa os dados da tarefa
class Tarefa {
  String titulo;
  bool concluida;

  Tarefa({required this.titulo, this.concluida = false});
}

// Provider: Controla o estado da lista
class TarefasProvider extends ChangeNotifier {
  List<Tarefa> tarefas = [];

  List<Tarefa> get listatarefas => tarefas;

  // Ação que altera o estado e notifica a interface
  void adicionarTarefa(String titulo) {
    tarefas.add(Tarefa(titulo: titulo));
    notifyListeners(); // Avisa que o estado mudou
  }

  void alternarStatus(int index) {
    tarefas[index].concluida = !tarefas[index].concluida;
    notifyListeners();
  }
}