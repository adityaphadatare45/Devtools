import 'package:devtools/ui/appbar.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState()=> LoginScreenState();
  
}

class LoginScreenState extends State<LoginScreen> {

  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
   void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
   }

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xECE8E8FF),
      appBar: buildAppBar(),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
           const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome Back !',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  // color: Color.fromRGBO(r, g, b, opacity)
                ),
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              
            ),
          ],
        ),
      ),
    );
  }
}