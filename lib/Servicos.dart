import 'package:flutter/material.dart';

class Servicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(190, 100, 0, 0)),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Ordens Anteriores",
                  style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Colors.black),
                ),
              ),
              const Icon(Icons.arrow_circle_right),
            ],
          ),
          const Text(
            "Em andamento",
            style: TextStyle(fontSize: 30),
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Container(
            color: Colors.white,
            height: 150,
            width: 300,
            child: const Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  "Titulo",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Data: dd/mm/aa",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  "Produto",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  "Defeito",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  "Valor final",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 30)),
          Container(
            color: Colors.white,
            height: 150,
            width: 300,
            child: const Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(
                  "Titulo",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Data: dd/mm/aa",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  "Produto",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  "Defeito",
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  "Valor final",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
