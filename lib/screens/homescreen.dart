import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget{
  const Homescreen({super.key});

  @override
  State<StatefulWidget> createState()=> HomescreenPage();
  
}
 class HomescreenPage extends State<Homescreen>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    backgroundColor: const Color(0xECE8E8FF),
    appBar: AppBar(
        backgroundColor: const Color(0xFF4A4040),
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text('DevTools',
         style: TextStyle(
          color: Colors.white
          )
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome Back!',
            style: TextStyle(
             color: Colors.black,
             fontSize: 24,
             fontWeight: FontWeight.bold,

            ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: (){},
              child: Text("Add Event"),
              ),
              FloatingActionButton(
              onPressed: (){
              
              },
              foregroundColor: Color.fromRGBO(74, 66,66, 100),
              child: const Icon(Icons.add),
              
            ),
          ],
        ),
      ),
    );
  }
  
 }