import 'package:intl/intl.dart';

class Agendamento {
  String? dia;
  String? mes;
  String? ano;
  String? data;
  String? produto;
  String? defeito;
  String? turno;
  DateTime hoje = DateTime.now();

  Agendamento({this.data, this.produto, this.defeito, this.turno});

  String toStringData(DateTime dataPicker) {
    return DateFormat('dd/MM/yyyy').format(dataPicker);
  }
}
