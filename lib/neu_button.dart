import 'package:flutter/material.dart';

class NeuButton extends StatelessWidget {

  final onTap;
  bool isButtonPressed;

   NeuButton({
    super.key, 
    this.onTap,
    required this.isButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 160,
        width: 160,
        child: Icon(Icons.favorite,
        size: 60,
        color: isButtonPressed ? Colors.green : Colors.red[400],),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isButtonPressed ? Colors.grey.shade200 : Colors.grey.shade300
          ),
          boxShadow: isButtonPressed
          ? [
            // no shadows if button is pressed
          ] 
          : [
            // darker shadow on bottom right
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(6, 6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            //lighter shadow on top left
           const BoxShadow (
              color: Colors.white,
              offset: Offset(-6, -6),
              blurRadius: 15,
              spreadRadius: 1,
            )
          ]
        ),
      ),
    );
  }
}