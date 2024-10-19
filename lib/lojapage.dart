import 'package:flutter/material.dart';

class Loja extends StatelessWidget {
  const Loja({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(bottom: 30)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 30)),
              const SizedBox(
                width: 280,
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Digite Algo...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                      )),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 50)),
          Container(
            color: Colors.blue,
            width: 300,
            height: 100,
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 30)),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("PROMOÇOES"),
                    Text("ESPECIAIS"),
                    Text("ATÉ 50%"),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(left: 10)),
                Image.asset(
                  '../assets/imgplaca.png',
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(50, 200, 0, 0)),
              Column(
                children: [
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      '../assets/imgcompressor.png',
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const Text("Placeholder"),
                ],
              ),
              const Padding(padding: EdgeInsets.only(left: 60)),
              Column(
                children: [
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      '../assets/imgsecadora.png',
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const Text("Placeholder"),
                ],
              )
            ],
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(50, 150, 0, 0)),
              Column(
                children: [
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      '../assets/imgmaquina.png',
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Text("Placeholder"),
                ],
              ),
              const Padding(padding: EdgeInsets.only(left: 60)),
              Column(
                children: [
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      '../assets/imgsensor.png',
                      fit: BoxFit.cover,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const Text("Placeholder"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
