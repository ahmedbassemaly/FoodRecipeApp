import 'package:flutter/material.dart';

class FoodComponentsIngredients extends StatelessWidget {
  final String text;
  final double size;
  const FoodComponentsIngredients(this.text,this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,top: 10.0,right: 10.0,bottom: 10.0),
      child: Text(text,
        style:  TextStyle(
          color:Colors.black87,
          fontSize: size,
          fontWeight: FontWeight.bold,
          fontFamily: 'Kaisei Haruno Umi',
        ),
      ),
    );
  }
}