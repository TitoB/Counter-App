import 'package:flutter/material.dart';
import 'package:flutter_contador_de_numeros/presentation_screen/counter_screen.dart';

void main(){
    runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lightBlueAccent,

      ),
      home: const CounterScreen()
    );
  }



}