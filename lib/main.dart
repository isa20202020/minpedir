import 'package:flutter/material.dart';
import 'tela_login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(buildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   TelaLogin(),
    );
  }
}
