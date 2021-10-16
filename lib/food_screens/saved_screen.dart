import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/food_screens/home_screen.dart';
import '../api_screen_image.dart';
import '../user_simple_preferences.dart';
import 'ingredients_screen.dart';

List<String> savingList = [];

class SavedItems extends StatefulWidget {
  const SavedItems({Key? key}) : super(key: key);

  @override
  _SavedItemsState createState() => _SavedItemsState();
}
int i=0;
class _SavedItemsState extends State<SavedItems> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/backgroundImage${Random().nextInt(6)}.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children:<Widget> [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0,bottom: 15.0),
                    child: InkWell(
                      child: Container(//#90a4ae #bdbdbd
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white70,
                        ),
                       // width: 100,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(
                                  savingList[index],
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Kaisei Haruno Umi',
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                  alignment: Alignment.topRight,
                                  onPressed: ()async{
                                      setState(() {
                                      savingList.removeAt(index);
                                   });
                                      ///Shared Preference////////////
                                   await UserSimplePreferences.setSavedList(savingList);
                                      /// ///////////////////////////
                                  },
                                  icon: const Icon(Icons.highlight_off_rounded,color: Colors.red,size: 35.0,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap:(){
                        userFoodInput=savingList[index];
                        Navigator.pushNamed(context, 'IngredientsScreen');
                      },
                    ),
                  );
                },
                itemCount: /*savingList == null ? 0 :*/ savingList.length,
                physics: const BouncingScrollPhysics(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



