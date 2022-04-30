
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextStyle fontSize30 =const TextStyle( fontSize: 30) ;
      int counter = 10;
    return  Scaffold(
      appBar:  AppBar(
        title:const Text( 'HomeScreen' ), 
        centerTitle: true,
        elevation: 3,

      ),
      body: Center(
         child:  Column( 
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('Cliks Counter', style: fontSize30 ),
             Text('$counter', style: fontSize30,),

             ],
       ),
    ),
    
        floatingActionButton:  FloatingActionButton(
          child: const Icon( Icons.add), 
          onPressed: () {
              counter++ ;
              //print ( 'Hola Mundo $counter' );
          }, 
      ),
    );
  }

}