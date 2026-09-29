import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/tarefas_provider.dart';
import './tela_adicionar.dart';

class TelaLista extends StatelessWidget {
  const TelaLista({super.key});

  @override
  Widget build(BuildContext context) {
    // Aqui estamos "escutando" o Provider. 
    // Sempre que notifyListeners() for chamado, esta tela será reconstruída.
    final provider = Provider.of<TarefasProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Tarefas'),
      ),
      body: provider.tarefas.isEmpty
          ? Center(child: Text('Nenhuma tarefa adicionada ainda.'))
          : ListView.builder(
              itemCount: provider.tarefas.length,
              itemBuilder: (context, index) {
                final tarefa = provider.tarefas[index];
                return ListTile(
                  title: Text(
                    tarefa.titulo,
                    style: TextStyle(
                      decoration: tarefa.concluida 
                          ? TextDecoration.lineThrough 
                          : TextDecoration.none,
                    ),
                  ),
                  trailing: Checkbox(
                    value: tarefa.concluida,
                    onChanged: (valor) {
                      // Chama a ação que altera o estado
                      provider.alternarStatus(index);
                    },
                  ),
                );
              },
            ),
      // Botão para navegar para a segunda página
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaAdicionar()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}