import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  final options= const ['Megaman','Metal Gear','Super smash','Final fantasy'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title:  const Text('Listview tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context,item)=> ListTile(
          leading: const Icon(Icons.account_circle),
          title: Text(options[item]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ), 
        
        separatorBuilder: (_,__)=> const Divider(), 
        )
      
    );
  }
}