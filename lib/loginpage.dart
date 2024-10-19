import 'package:flutter/material.dart';
import 'package:projf_scheddar/inicioPage.dart';
import 'DTO/usuario.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController controlName = TextEditingController();
  TextEditingController controlEmail = TextEditingController();
  TextEditingController controlSenha = TextEditingController();
  TextEditingController controlCPF = TextEditingController();
  TextEditingController controlEndereco = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 450,
          width: 250,
          child: Column(
            children: [
              TextField(
                controller: controlEmail,
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
              ),
              TextField(
                controller: controlName,
                decoration: const InputDecoration(
                  labelText: "Nome",
                ),
              ),
              TextField(
                controller: controlSenha,
                decoration: const InputDecoration(labelText: "Senha"),
              ),
              TextField(
                controller: controlCPF,
                decoration: const InputDecoration(labelText: "CPF"),
              ),
              TextField(
                controller: controlEndereco,
                decoration: const InputDecoration(labelText: "Endereço"),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        String txtNome = controlName.text.toString();
                        String txtEmail = controlEmail.text.toString();
                        String txtSenha = controlSenha.text.toString();
                        String txtCPF = controlCPF.text.toString();
                        String txtEnderco = controlEndereco.text.toString();
                        Usuario user = Usuario(
                            txtEmail, txtNome, txtSenha, txtEnderco, txtCPF);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InicioPage(user: user)));
                      },
                      child: const Text("Cadastrar")),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Já possui conta?"),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text("Entrar")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
