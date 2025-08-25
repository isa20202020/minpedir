import 'package:flutter/material.dart';
import 'usuario.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   Usuario u = Usuario(
     codigo: 1
         login: 'Isabella123',
         nome: 'Isabella',
         senha: '@senhaforte123'
   );

    return MaterialApp(
   home: Scaffold(
   appBar: AppBar(
   title: const Text("Meus Dados:"),
   ),
     body:
       Center(
         child: Padding(padding: const EdgeInsets.all(18.0),

           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [

             ],
           ),
         ),
       ),
     )
    );
    }
  }
