import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget{

  const CounterScreen({super.key});
  //int _count = 0;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code Counter Screen'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('12', style: TextStyle(fontSize: 160,fontWeight: FontWeight.w100)),
            Text('Clicks')
          ],
            
        ),
       // body: Center(child: Text('You have pressed the button $_count times.')),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
        tooltip: 'Increment Counter',
        child: const Icon(Icons.plus_one),
          ),
    );
  }
}