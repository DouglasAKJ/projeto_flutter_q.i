import 'package:flutter/material.dart';
import 'package:projf_scheddar/DTO/usuario.dart';
import 'package:provider/provider.dart';
import 'agendamentoPage.dart';
import 'home.dart';
import 'lojapage.dart';
import 'loginpage.dart';

class InicioPage extends StatefulWidget {
  final Usuario user;
  const InicioPage({super.key, required this.user});

  @override
  State<InicioPage> createState() => InicioPageState();
}

class InicioPageState extends State<InicioPage> {
  late final List<Widget> _pages;
  int indexAtual = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      Home(user: widget.user),
      const Agendamentos(),
      const Loja(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_2_rounded),
          style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.white)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: indexAtual,
          onTap: (index) {
            setState(() {
              indexAtual = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ínicio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: "Agendamentos"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Loja"),
          ]),
      body: _pages[indexAtual],
    );
  }
}
