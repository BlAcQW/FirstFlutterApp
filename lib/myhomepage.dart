import 'package:flutter/material.dart';
 class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
              Icon(Icons.add_ic_call_rounded),
               Text('Hello, Welocme back!',
                style: 
                TextStyle(fontSize: 20, 
                color:Colors.red,)
                ), 
               Icon(Icons.add_ic_call_rounded), ]
               
           
          ),
        )
        

      ),
    );
  }
}
