//import 'package:fl_components/screens/listview1_screen.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Listview2Screen(),
      //home: Listview1Screen(),
      initialRoute: 'home',
      routes: {
        'listview1':(BuildContext context ) => const Listview1Screen(),
        'listview2':(BuildContext context ) => const Listview2Screen(),
        'alert':(BuildContext context ) => const AlertScreen(),
        'card':(BuildContext context ) => const CardScreen(),
        'home':(BuildContext context ) => const HomeScreen(),
      },
    );
  }
} 