import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TabuadaPage());
  }
}

class TabuadaPage extends StatefulWidget {
  const TabuadaPage({super.key});

  @override
  State<TabuadaPage> createState() => _TabuadaPageState();
}

class _TabuadaPageState extends State<TabuadaPage> {
  String mensagem = '';

  void verificaResposta(String resposta) {
    setState(() {
      if (resposta == '25') {
        mensagem = 'Certo!';
      } else {
        mensagem = 'Errado!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tabuada')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('5 x 5 = ?', style: TextStyle(fontSize: 25)),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: verificaResposta,
              decoration: const InputDecoration(labelText: 'Resposta'),
            ),
            Text(mensagem),
          ],
        ),
      ),
    );
  }
}
