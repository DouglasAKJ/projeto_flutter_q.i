import 'package:flutter/material.dart';
import 'package:projf_scheddar/Agendamentos.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Column(
        children: [
          const Row(
            children: [
              const Padding(padding: const EdgeInsets.fromLTRB(20, 100, 0, 0)),
              const Text("Bem vindo(a), Usuário", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ],
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              TextButton(onPressed: (){

              }, child: const Text("Meus agendamentos", style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),)),
              const Padding(padding: EdgeInsets.fromLTRB(120, 0, 0, 0)),
              TextButton(onPressed: (){
              
              }, child: const Text("Avaliar", style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),))
            ],
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(20, 50, 0, 0)),
              TextButton(onPressed: (){
              
                  }, child: const Text("Minhas Compras", style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),)),
            ],
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
          const Divider(thickness: 6, color: Colors.black,),
          const Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(50, 50, 0, 0)),
              Text("Você não possui agendamentos....", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            ],
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0, 120, 0, 0)),
          Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(150, 0, 0, 0)),
              const Text("Novo agendamento"),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              ElevatedButton(onPressed: (){}, child: const Icon(Icons.new_label_rounded)),
            ],
          ),
          const Divider(thickness: 6, color: Colors.black,),
          const Text("Promoções do dia", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          const Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(45, 90, 0, 0)),
              SizedBox(
                width: 80,
                height: 80,
                child: ColoredBox(color: Colors.blue),
              ),
              Padding(padding: EdgeInsets.fromLTRB(25, 0, 0, 0)),
              SizedBox(
                width: 80,
                height: 80,
                child: ColoredBox(color: Colors.blue),
              ),
              Padding(padding: EdgeInsets.fromLTRB(25, 0, 0, 0)),
              SizedBox(
                width: 80,
                height: 80,
                child: ColoredBox(color: Colors.blue),
              ),
            ],
          ),
           Row(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(10, 40, 0, 0)),
              ElevatedButton(onPressed: (){}, child: const Icon(Icons.arrow_left)),
              const Padding(padding:  EdgeInsets.fromLTRB(220, 40, 0, 0)),
              ElevatedButton(onPressed: (){}, child: const Icon(Icons.arrow_right)),
            ],
          )
        ],
      ),
    );
  }
}