import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/tarefas_provider.dart';

class TelaAdicionar extends StatelessWidget {
  final TextEditingController _controlador = TextEditingController();

  TelaAdicionar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Tarefa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controlador,
              decoration: InputDecoration(
                labelText: 'Título da tarefa',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_controlador.text.isNotEmpty) {
                  // Acessa o Provider com listen: false para executar a ação[cite: 2]
                  Provider.of<TarefasProvider>(context, listen: false)
                      .adicionarTarefa(_controlador.text);
                  
                  // Retorna para a tela anterior
                  Navigator.pop(context);
                }
              },
              child: Text('Salvar Tarefa'),
            ),
          ],
        ),
      ),
    );
  }
}