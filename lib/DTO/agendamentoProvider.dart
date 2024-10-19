import 'package:flutter/material.dart';
import 'package:projf_scheddar/agendamentoPage.dart';

class Agendamentoprovider extends ChangeNotifier {
  final List<AgendamentoColumn> _agendamentos = [];

  List<AgendamentoColumn> get agendamentos => _agendamentos;

  void addAgendamento(AgendamentoColumn agendamento) {
    _agendamentos.add(agendamento);
    notifyListeners();
  }

  void removeAgendamento(int index) {
    if (index >= 0 && index < agendamentos.length) {
      agendamentos.removeAt(index);
      notifyListeners();
    } else {
      agendamentos.removeLast();
    }
  }
}
