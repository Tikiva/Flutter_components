import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  final options= const ['Megaman','Metal Gear','Super smash','Final fantasy'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title:  const Text('Listview tipo 1'),
      ),
      body: ListView(
        //  children: const [
        //    Text('Hola mundo'),
        //    Text('Hola mundo'),
        //    Text('Hola mundo'),
        //    Text('Hola mundo'),
          
        //  ],
        children:  [
          ...options.map(
            (game) => ListTile(
              leading: const Icon(Icons.account_circle),
              title:Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
            ).toList(),

            const Divider(),
          
          // ListTile(
          //   leading: Icon(Icons.access_time_sharp),
          //   title: Text('Hola'),
          // ),
        ],
        
        )
      
    );
  }
}