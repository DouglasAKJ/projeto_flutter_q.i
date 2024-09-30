import 'package:flutter/material.dart';

class Agendamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 80),
              ),
              const Text(
                "Novo Agendamento",
                style: TextStyle(fontSize: 20),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
