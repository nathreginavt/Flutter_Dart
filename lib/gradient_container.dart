import 'package:flutter/material.dart';
import 'package:flutter_app/dice_roller.dart';

//import 'package:flutter_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//creating own widgets
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  //store some imput values and store them on variables
  final Color startColor, endColor;

  @override 
  Widget build(context){
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ startColor, endColor, ],
            begin: startAlignment, //where u want the gradient to being
            end: endAlignment, //where u want it to end
          ),
        ),
        child: Center(
          //child: StyledText('Hello World!');
          child: DiceRoller(),
          ),
      );
  }
}