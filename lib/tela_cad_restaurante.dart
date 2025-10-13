import 'package:flutter/material.dart';
import 'package:exemplo/tipo.dart';

import 'banco/restaurante_dao.dart';

class TelaCadRestaurante extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaCadRestaurante();
  }

  class TelaCadRestaurante extends State<TelaCadRestaurante>{
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();
  String? culiariaSelecionada;
  List<Tipo>
  int? tipoCulinaria;
  }
  Future<void> carregarTipos() asnyc{
  final lista = await tipoDao.listarTipos();
  setState (() {

  tiposCulinaria = listar;

  });
  }


  @override
  Widget build(BuildContext context) {
  return Scafold(
  appBar: appBar(title: const Text("Cadastro de Restaurante")),
  body: Padding(padding:const EdgeInsets.all(30),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Text("Informações do restaurante: ")
  SizedBox(height: 40),
  Text("Tipo de comida: "),
  DropdownButtonFormField<String>(
  value: culinariaSelecionada,
  items: tiposCulinaria.map((tipo) {
  return DropdownMenuItem<String>(
  value: tipo.descricao,
  child: Text("${tipo.descreicao}")
  );
  }).toList(),
  onChanged: (String? value) {
  setState(() {}
  onChanged: (value)
  {
  culinariaSelecionada = value;
  Tipo tipoSelecionado = tiposCulinaria.firstWhere(
  (tipo) => tipo.descricao == value,
  );

  tipoCulinaria = tipoSelecionado.codigo;
  });
  }
  ),

  TextFormField(
  decoration: const InputDecoration(hintText: 'Nome do Restaurante'),
  validator: (String? value) {},
  controller: nomeController,
  ),
  onChanged: (value){}),
  ),
  TextFormField(
  decoration: const InputDecoration(hintText: 'Latitude'),
  validator: (String? value) {},
  controller: latitudeController,
  ),

  TextFormField(
  decoration: const  InputDecoration(hintText: 'Longitude'),
  validator: (String? value) {},
  controller: longitudeController,
  ),

  SizedBox(height: 50),
  ElevatedButton(onPressed: (){}, child: Row(
  mainAxisAlignment: mainAxisAlignment.center,
  children: [
  Icon(Icons.save)
  Text("Cadastrar")
  ],
  ))
  ],
  ),
  ),
  );
  }
}