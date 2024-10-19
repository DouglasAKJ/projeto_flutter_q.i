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
      backgroundColor: const Color.fromARGB(255, 13, 31, 47),
      body: Center(
        child: SizedBox(
          height: 750,
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      color: const Color.fromARGB(255, 13, 31, 47),
                      width: 70,
                      height: 70,
                      child: Image.asset(
                        'assets/imglogo.png',
                        fit: BoxFit.cover,
                        width: 70,
                        height: 70,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "ViaCorp\nSoluções",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              TextField(
                controller: controlEmail,
                decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(74, 66, 82, 1),
                  filled: true,
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
              TextField(
                controller: controlName,
                decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(74, 66, 82, 1),
                  filled: true,
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: "Nome",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
              TextField(
                controller: controlSenha,
                decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(74, 66, 82, 1),
                  filled: true,
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: "Senha",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
              TextField(
                controller: controlCPF,
                decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(74, 66, 82, 1),
                  filled: true,
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: "CPF",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
              TextField(
                controller: controlEndereco,
                decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(74, 66, 82, 1),
                  filled: true,
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: "Endereço",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
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
                  const Text(
                    "Já possui conta?",
                    style: TextStyle(color: Colors.white),
                  ),
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
