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
      backgroundColor: const Color(0xECE8E8FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A4040),
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text('DevTools', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome \n to\nDevTools',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: _buttonStyle(),
              onPressed: () {},
              child: const Text("Sign Up to DevTools"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: _buttonStyle(),
              onPressed: () {},
              child: const Text("Log In to DevTools"),
            ),
            const SizedBox(height: 30),
            Row(
              children: const [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OR", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                    )
                  ),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: _socialButtonStyle(),
              onPressed: () {},
              child: const Text("Google"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: _socialButtonStyle(),
              onPressed: () {},
              child: const Text("GitHub"),
            ),
          ],
        ),
      ),
    );
  }

  ButtonStyle _buttonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF4A4040),
      foregroundColor: Colors.white,
      minimumSize: const Size.fromHeight(48),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  ButtonStyle _socialButtonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF4A4040),
      foregroundColor: Colors.white,
      minimumSize: const Size.fromHeight(45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
  
}