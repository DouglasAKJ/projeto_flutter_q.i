import 'package:flutter/material.dart';
import 'package:projf_scheddar/DTO/usuario.dart';
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
  static int selectedIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      Home(user: widget.user),
      const Agendamentos(),
      Loja(),
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
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Ínicio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: "Agendamentos"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Loja"),
          ]),
      body: _pages[selectedIndex],
    );
  }
}
