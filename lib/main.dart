import 'package:flutter/material.dart';

void main() {
  runApp(const Janela());
}

class Janela extends StatelessWidget {
  const Janela({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Principal()),
    );
  }
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final List<String> imagens = [
    'https://thumb.wikimedia.org/wikipedia/commons/thumb/9/95/Luciano_Re_Cecconi_1974.jpg/250px-Luciano_Re_Cecconi_1974.jpg?utm_source=pt.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
    'https://thumb.wikimedia.org/wikipedia/commons/thumb/e/e8/Iglesia_del_colegio_de_los_Jesuitas%2C_Ponta_Delgada%2C_isla_de_San_Miguel%2C_Azores%2C_Portugal%2C_2020-07-30%2C_DD_09-11_HDR.jpg/500px-Iglesia_del_colegio_de_los_Jesuitas%2C_Ponta_Delgada%2C_isla_de_San_Miguel%2C_Azores%2C_Portugal%2C_2020-07-30%2C_DD_09-11_HDR.jpg?utm_source=pt.wikipedia.org&utm_campaign=index&utm_content=thumbnail',
    'https://thumb.wikimedia.org/wikipedia/commons/thumb/6/69/Cercopiteco_verde_%28Chlorocebus_pygerythrus%29%2C_parque_nacional_de_Tarangire%2C_Tanzania%2C_2024-05-24%2C_DD_02.jpg/250px-Cercopiteco_verde_%28Chlorocebus_pygerythrus%29%2C_parque_nacional_de_Tarangire%2C_Tanzania%2C_2024-05-24%2C_DD_02.jpg?utm_source=commons.wikimedia.org&utm_campaign=parser&utm_content=thumbnail',
    'https://thumb.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/960px-Flag_of_Brazil.svg.png?utm_source=pt.wikipedia.org&utm_campaign=index&utm_content=thumbnail',
    'https://thumb.wikimedia.org/wikipedia/commons/thumb/c/c2/National_Seal_of_Brazil_%28color%29.svg/120px-National_Seal_of_Brazil_%28color%29.svg.png?utm_source=pt.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
  ];

  final List<bool> gostou = [false, false, false, false, false];
  int imagemAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imagens[imagemAtual],
          width: 200,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              gostou[imagemAtual] = !gostou[imagemAtual];
            });
          },
          icon: Icon(
            gostou[imagemAtual] ? Icons.favorite : Icons.favorite_border,
            color: gostou[imagemAtual] ? Colors.red : null,
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                if (imagemAtual < imagens.length - 1) {
                  imagemAtual++;
                } else {
                  imagemAtual = 0;
                }
              });
            },
            child: const Text('Próxima imagem'))
      ],
    );
  }
}
