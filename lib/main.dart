import 'package:flutter/material.dart';
import 'package:projf_scheddar/DTO/agendamentoProvider.dart';
import 'package:projf_scheddar/app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Agendamentoprovider(),
    child: const App(),
  ));
}
