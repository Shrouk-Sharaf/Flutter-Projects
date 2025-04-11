import 'package:flutter/material.dart';
import 'page_1.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: FirstPage(),
          ),
        )
    );
  }
}