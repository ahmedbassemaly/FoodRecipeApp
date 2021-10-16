import 'package:flutter/material.dart';
import '../account_card.dart';

class MyAccount extends StatefulWidget {

  @override
  _MyAAccountState createState() => _MyAAccountState();
}

class _MyAAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF263238),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            const Padding(
              padding: EdgeInsets.only(left: 140.0,top: 80.0),
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/Bassom.jpeg'),
              ),
            ),

            const SizedBox(
              height: 65.0,
            ),

            AccountCard('Ahmed Bassem',Icons.person),

            AccountCard('+01 115 614 030',Icons.phone_android_outlined),

            AccountCard('ahmedbassemaly@gmail.com',Icons.email_outlined),

          ],
        ),
      ),
    );
  }
}

