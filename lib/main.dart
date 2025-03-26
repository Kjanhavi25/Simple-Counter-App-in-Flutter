import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState(){
    return _MyAppState();
  }
  }

  class _MyAppState extends State{
    int count=0;
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Counter App"),
            centerTitle: true,
            backgroundColor: Colors.amber,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Center(
                child: Text("$count"),
              ),
              ElevatedButton(
                onPressed:()
                {
                  count++;
                  setState((){});
                },
                child:Text("Increment"),
               )
            ],
          ),
        ),
      );
    }
  
  }
  