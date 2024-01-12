import 'package:flutter/material.dart';
import 'package:flutter_simple_animation/neu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isButtonPressed = false;
  void buttonPressed(){
    setState(() {
      if(isButtonPressed == false){
        isButtonPressed = true;
      }else if(isButtonPressed == true){
        isButtonPressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child:NeuButton(
          isButtonPressed: isButtonPressed,
          onTap: buttonPressed,
        ) ,
      ),
    );
  }
}