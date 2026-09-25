import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Meu Perfil", style: TextStyle(color: const Color.fromARGB(255, 57, 57, 57),),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        width: double.infinity,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              Icon(Icons.person)
            ],),
            SizedBox(height: 8),
            Text("Nicolas Miguel Uczak", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Cidade: Cantagalo "), Text("Estado: Paraná")
            ],),
            SizedBox(height: 8),
            Text("Engenharia de Software"),
            SizedBox(height: 8),
            Text("Desenvolmimento de sistemas para WEB/Mobile"),
          ],
        ),
      ),
    );
  }
}
