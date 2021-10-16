import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  _CoverPageState createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(//#FC7462  #FA7462  #FB0066  #004d40  #1de9b6
        backgroundColor: const Color(0xFFFA7462),
        body: Column(
          children: <Widget> [

            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:const <Widget> [
                  Text('Enjoy \ncooking',
                    style: TextStyle(color: Colors.white,
                      fontSize: 50.0,
                      fontFamily: 'Kaisei Haruno Umi',
                    ),
                  ),
                  //'Delicious and spectacular recipes\non your phone'
                  Text("Our Premium ingredients are handpicked and\nimported from the heart and carefully                        prepared to give you the authentic taste\nyou won't forget",
                    style: TextStyle(color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15.0,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const <Widget> [
                Image(
                    image:AssetImage('images/Eatingfood.png'),
                    width: 300.0,
                ),
              ],
            ),

            const SizedBox(height: 50.0,),

            GestureDetector(
              onTap:(){
                Navigator.pushNamed(context, 'NavigationBar');
              },
              child: Material(
                borderRadius: BorderRadius.circular(100.0),
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 10.0),
                  child: Text('Get Started',
                  style: TextStyle(fontSize: 30.0,
                         color: Colors.red,
                         fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


