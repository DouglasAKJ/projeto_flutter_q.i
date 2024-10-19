import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:projf_scheddar/DTO/usuario.dart';
import 'package:projf_scheddar/InicioPage.dart';
import 'package:projf_scheddar/DTO/agendamentoProvider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  final Usuario user;
  const Home({super.key, required this.user});
  @override
  State<Home> createState() => HomeState(user);
}

class HomeState extends State<Home> {
  final Usuario user;

  HomeState(this.user);
  @override
  Widget build(BuildContext context) {
    final agendamentoProvider = Provider.of<Agendamentoprovider>(context);
    List<String> produtos = [
      'assets/imgsecadora.png',
      'assets/imgmaquina.png',
      'assets/imgsensor.png',
      'assets/imgplaca.png',
      'assets/imgcompressor.png'
    ];
    return Center(
        child: Column(children: [
      Row(
        children: [
          const Padding(padding: EdgeInsets.fromLTRB(20, 80, 0, 0)),
          Text(
            "Bem vindo(a), ${user.nome}",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      Row(
        children: [
          const Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
          TextButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text(
                "Meus agendamentos",
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.underline),
              )),
          const Padding(padding: EdgeInsets.fromLTRB(80, 0, 0, 0)),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Avaliar",
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.underline),
              ))
        ],
      ),
      Row(
        children: [
          const Padding(padding: EdgeInsets.fromLTRB(20, 50, 0, 0)),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Minhas Compras",
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.underline),
              )),
        ],
      ),
      const Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
      const Divider(
        thickness: 6,
        color: Colors.black,
      ),
      Visibility(
        visible: agendamentoProvider.agendamentos.isNotEmpty,
        replacement: const Column(
          children: [
            Text("Você não possui agendamentos...",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 120,
            )
          ],
        ),
        child: SizedBox(
          height: 140,
          child: ListView.builder(
            itemCount: agendamentoProvider.agendamentos.length,
            itemBuilder: (context, index) {
              return agendamentoProvider.agendamentos[index];
            },
          ),
        ),
      ),
      const Padding(padding: EdgeInsets.fromLTRB(0, 80, 0, 0)),
      const Divider(
        thickness: 6,
        color: Colors.black,
      ),
      const Text(
        "Promoções do dia",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
          SizedBox(
            width: 350,
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: produtos.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue,
                    width: 100,
                    height: 150,
                    margin: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage(produtos[index]),
                      fit: BoxFit.contain,
                    ),
                  );
                }),
          ),
        ],
      ),
    ]));
  }
}
