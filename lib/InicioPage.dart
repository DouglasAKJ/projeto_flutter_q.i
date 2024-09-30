import 'package:flutter/material.dart';
import 'Agendamentos.dart';
import 'Home.dart';
import 'Loja.dart';
import 'Servicos.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => InicioPageState();
}

class InicioPageState extends State<InicioPage> {
  static int selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Servicos(),
    Agendamentos(),
    Loja(),
  ];

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
              backgroundColor: const WidgetStatePropertyAll(Colors.white)),
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
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Serviços"),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: "Agendamentos"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Loja"),
          ]),
      body: _pages[selectedIndex],
    );
  }
}
