import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int counter = 0;

void decrease (){

  if (counter == 0 ) 
  {counter=0;} else{
  counter--;}
  setState(() {});
}

void restart () {
  counter=0;
  setState(() {});
}

void increase () {
  counter++;
  setState(() {});
}


  @override
  Widget build(BuildContext context) {

    TextStyle fontSize30 =const TextStyle( fontSize: 30) ;
      
    return  Scaffold(
      appBar:  AppBar(
        title:const Text( 'CounterScreen' ), 
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

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton:   CustomFloatingACtions(
          
          decreaseFn: decrease,
          restartFn: restart,
          increaseFn: increase

        ),
    );
  }
}



class CustomFloatingACtions extends StatelessWidget {
  
  final Function decreaseFn;

  final Function restartFn;

  final Function increaseFn;

  const CustomFloatingACtions({
    Key? key, 
   required  this.increaseFn, 
   required this.decreaseFn, 
   required this.restartFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: const EdgeInsets.all(17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //button minus 
          FloatingActionButton(
            child:  const Icon( Icons.remove ),
            onPressed:() => decreaseFn(), 
          ),

          //button restart
          FloatingActionButton(
            child:  const Icon( Icons.change_circle_outlined),
            onPressed: () => restartFn(),  
          ),

          
          //button plus
          FloatingActionButton(
            child:  const Icon( Icons.add), 
            onPressed: () => increaseFn(), 
          ),
        ],
      ),
    );
  }
}