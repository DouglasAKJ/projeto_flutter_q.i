import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:projf_scheddar/DTO/agendamento.dart';
import 'package:projf_scheddar/DTO/agendamentoProvider.dart';
import 'package:provider/provider.dart';

class Agendamentos extends StatefulWidget {
  const Agendamentos({super.key});

  @override
  State<Agendamentos> createState() => AgendamentosState();
}

class AgendamentosState extends State<Agendamentos> {
  TextEditingController controlNomeProduto = TextEditingController();
  TextEditingController controlTurno = TextEditingController();
  TextEditingController controlDefeito = TextEditingController();
  //DateTime? dataPicker;
  String? dataTexto;
  DateTime hoje = DateTime.now();
  String data = '';
  int contador = 0;
  //List<AgendamentoColumn> agendamentos = [];

  @override
  Widget build(BuildContext context) {
    final agendamentoProvider = Provider.of<Agendamentoprovider>(context);
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
              IconButton(
                onPressed: () async {
                  DateTime? dataPicker = await showDatePicker(
                      context: context,
                      firstDate: hoje,
                      lastDate:
                          DateTime.utc(hoje.year, hoje.month, hoje.day + 14));

                  data = await dataString(dataPicker!);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Container(
                            color: Colors.grey,
                            height: 220,
                            width: 100,
                            child: Column(
                              children: [
                                TextField(
                                  controller: controlNomeProduto,
                                  decoration: const InputDecoration(
                                      labelText: "Produto"),
                                ),
                                TextField(
                                  controller: controlDefeito,
                                  decoration: const InputDecoration(
                                      labelText: "Defeito"),
                                ),
                                TextField(
                                  controller: controlTurno,
                                  decoration:
                                      const InputDecoration(labelText: "Turno"),
                                ),
                                ElevatedButton(
                                    onPressed: () async {
                                      String? textoProduto =
                                          controlNomeProduto.text.toString();
                                      String? textoDefeito =
                                          controlDefeito.text.toString();
                                      String? textoTurno =
                                          controlTurno.text.toString();
                                      agendamentoProvider
                                          .addAgendamento(AgendamentoColumn(
                                        data: data,
                                        produto: textoProduto,
                                        defeito: textoDefeito,
                                        turno: textoTurno,
                                        index: agendamentoProvider
                                            .agendamentos.length,
                                      ));

                                      Navigator.of(context).pop();
                                      setState(() {
                                        controlNomeProduto.clear();
                                        controlDefeito.clear();
                                        controlTurno.clear();
                                      });
                                    },
                                    child: const Text("Enviar")),
                              ],
                            ),
                          ),
                        );
                      });
                  setState(() {});
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: agendamentoProvider.agendamentos.length,
              itemBuilder: (context, index) {
                print(index);
                return agendamentoProvider.agendamentos[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AgendamentoColumn extends StatelessWidget {
  final String? data;
  final String? produto;
  final String? defeito;
  final String? turno;
  final int index;

  const AgendamentoColumn(
      {required this.data,
      required this.produto,
      required this.defeito,
      required this.turno,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    final agendamentoProvider = Provider.of<Agendamentoprovider>(context);
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Produto: $produto"),
            Text("Agendamento para o dia: $data"),
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: SizedBox(
                            height: 200,
                            width: 200,
                            child: Column(
                              children: [
                                Text("Produto: $produto"),
                                Text("Defeito: $defeito"),
                                Text("Data: $data"),
                                Text("Turno: $turno"),
                                TextButton(
                                    onPressed: () {
                                      agendamentoProvider
                                          .removeAgendamento(index);
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text("Remover")),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: const Text("Mais detalhes"))
          ],
        ),
      ),
    );
  }
}

Future<String> dataString(DateTime dataPicker) async {
  return DateFormat('dd/MM/yyyy').format(dataPicker);
}
