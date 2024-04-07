import 'package:flutter/material.dart';
import 'package:flutter_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//creating own widgets
class GradientContainer extends StatelessWidget {
  
  const GradientContainer({super.key});

  @override 
  Widget build(context){
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.purple,
            ],
            begin: startAlignment, //where u want the gradient to being
            end: endAlignment, //where u want it to end
          ),
        ),
        child: const Center(
          child: StyledText(),
          ),
      );
  }
}