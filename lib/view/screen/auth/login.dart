import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("you're in LoginPage",style: TextStyle(fontSize: 25),),),);
  }
}