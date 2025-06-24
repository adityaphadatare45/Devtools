// To-Do list 
/*
1. Create appbar 
2. Design the layout
*/
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Color.fromRGBO(51, 49, 47, 1),
       elevation: 0,
       title: const Text(
        "DevTools",
       style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,        
        ),       
       ),
       centerTitle: true,
       leading: Builder(
        builder:(context){
          return IconButton( 
            icon: const Icon(Icons.menu),
            color: Colors.white,
          onPressed: (){
            Scaffold.of(context).openDrawer();
          }
          );
        }
      ),
     ),
     body: Padding(
       padding: const EdgeInsets.all(24),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerLeft,
              child: Text(
                'Welcome \n to\nDevTools',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ),
          const SizedBox(height: 40,),
          ElevatedButton(
            onPressed: (){},
            child: Text('SIGNUP TO DEVTOOLS', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,             
             ),
            ),
          ),
          const SizedBox(height: 20,),
           ElevatedButton(
            onPressed: (){},
            child: Text('LOGIN TO DEVTOOLS', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,              
             ),
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            "OR",
          style: TextStyle(
             color: Colors.black,
             fontSize: 16,
             fontWeight: FontWeight.normal,
          ),
          ),
          const SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){},
            child: Text('GOOGLE')           
          ),
        ],
       ),
     ),
    );
  }
  
}