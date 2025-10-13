import 'package:flutter/material.dart';
import 'tela_home.dart';
import 'usuario.dart';
import 'banco/usuario_dao.dart';

class TelaLogin extends StateWidget{
  TelaLogin({super.key});
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appbar: AppBar(title: const Text("Tela de login")),
        body: Padding(padding: const EdgeInsets.all(24.0),
          child: Column (
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Usuario'),
                controller: usuarioController,
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: const InputDecoration(labelText: 'Senha'),
                obscureText: true,
                controller: senhaController,
              ),
              const SizedBox(height: 40),
              ElevatedButton(onPressed: (), async {
              final sucesso = await usuarrioDAO.autenticar(usuacrioController.text, senhaController.text);

              if(sucesso){
              Navigator.push(context,
              MaterialPageROute(build: context) => TelaHome())
              );
              }else {
              ScaffoldMensesenger.of(context).showSnackBar(
              SnackBar(context: Text("Login ou senha inválidos!"))
              );
              }
              }, child: Text("Login")),
            ],
          ),
        )
    );
  }
}