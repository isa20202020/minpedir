import 'package:flutter/material.dart';
import 'package:exemplo/tela_cad_restaurante.dart';

class TelaHome extends StatelessWidget{
  TelaHome({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: const Text('Tela Home')),
        body: Padding(padding: const Edge EdgeInsets.all(20)),
    child: Column(
    mainAxisAlignment: mainAxisAlignment.center,
    children: [
    Text("Lista de Restaurentes: "),
    ElevatedButton(onPressed: onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => TelaCadRestaurente()));
    }, child: Text("Cadastrar Restaurantes")),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Column(
    children: [
    Text("Meu Restaurante"),
    Text("Comida Mexicana")
    ],
    ),
    SizedBox(width: 10),
    ElevatedButton(onPressed: onPressed (){}, child: Text("Excluir")),
    SizedBox(width: 10),
    ElevatedButton(onPressed: onPressed (){}, child: Text("Editar")),
    ],
    ),
    ],

    )
    );
  }
}