import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  String text;
  final icon;
  AccountCard(this.text,this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
      child: ListTile(
        leading: Icon(icon,color: Colors.teal,),
        title: Text(text,
          style: const TextStyle(
              color: Colors.teal,
              fontSize: 23,
              fontFamily: 'Oleo Script'),
        ),
      ),
    );
  }
}