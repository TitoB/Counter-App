import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget{
  
  const CounterFunctionScreen({super.key});
  
  @override
  State<CounterFunctionScreen> createState()=> _CounterFunctionScreenState();
}
  class _CounterFunctionScreenState extends State<CounterFunctionScreen>{
  int clickCounter=0;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions') ,
        centerTitle:true,
        elevation: 2,
        leading:  IconButton( 
          icon: Icon(Icons.refresh_rounded), 
          onPressed: ()
        {
          setState(() {
            clickCounter=0;
          });
        },),
        
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('$clickCounter', style: TextStyle(fontSize: 160,fontWeight: FontWeight.w100)),
            Text('Click${clickCounter==1 ? '':'s'}',style: TextStyle(fontSize: 22),)
          ],
            
        ),
       // body: Center(child: Text('You have pressed the button $_count times.')),

        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: (){
                clickCounter++;
                setState(() {});
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(height: 10),

            FloatingActionButton(shape: const StadiumBorder(),
            onPressed: () {
              clickCounter--;
              setState(() {
                
              });
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
            )
          ],)
    );
  }
}