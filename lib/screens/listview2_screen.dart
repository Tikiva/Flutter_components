import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  final options= const ['Megaman','Metal Gear','Super smash','Final fantasy'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title:  const Text('Listview tipo 2'),
        elevation: 0,
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context,item)=> ListTile(
          leading: const Icon(Icons.account_circle,color:Colors.pinkAccent),
          title: Text(options[item]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.pinkAccent,),
          onTap: (){
            final game=options[item];
            print(game);
          },
          ), 
        
        separatorBuilder: (_,__)=> const Divider(), 
        )
      
    );
  }
}