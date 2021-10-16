import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:food_recipe/api_screen.dart';
import 'package:food_recipe/food_screens/saved_screen.dart';

import '../api_screen_image.dart';
import '../food_list.dart';

String userFoodInput='';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  /// API'S FOR Background Image
  // void getFoodImage()async{
  //   try{
  //     List ingredients=await Ingredients().foodRecipe(userFoodInput);
  //
  //     setState(() {
  //       foodImage=ingredients;
  //     });
  //   } catch(e){
  //     (e.toString());
  //   }
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   getFoodImage();
  // }
  /// API'S FOR Background Image

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(//#37474f #263238 
        backgroundColor: const Color(0xFF263238),
        ///ORIGINAL CODE
        // body: ListView(
        //
        //   children:<Widget> [
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.stretch,
        //       children: <Widget> [
        //
        //         const Padding(
        //           padding: EdgeInsets.only(left: 15.0,top: 20.0),
        //           child: Text('What do you want\nto cook today?',
        //             style: TextStyle(
        //               fontSize: 33.0,
        //               color: Colors.white,
        //               fontFamily: 'Kaisei Haruno Umi',
        //             ),
        //           ),
        //         ),
        //
        //         const SizedBox(
        //           height: 30.0,
        //         ),
        //
        //         Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 20.0),
        //           child: TextField(
        //             onChanged: (value){
        //               userFoodInput=value.toLowerCase();
        //             },
        //             style:  const TextStyle(color: Colors.black),
        //             textAlign: TextAlign.center,
        //             decoration:   InputDecoration(
        //               fillColor: const Color(0xFF9e9e9e), filled: true,//#9e9e9e C5D6DD
        //               hintText: 'Search',
        //               hintStyle: const TextStyle(color: Colors.white,fontSize: 20.0),
        //               suffixIcon: IconButton(
        //                 onPressed: (){
        //                   setState(() {
        //                     Navigator.pushNamed(context, 'IngredientsScreen');
        //                     ///
        //                     // Navigator.push(context, CupertinoPageRoute(builder: (context)=>const
        //                     // IngredientsScreen()));
        //                     // Navigator.of(context).push(CupertinoPageRoute(builder: (context){
        //                     //   return const IngredientsScreen();
        //                     // }),
        //                     // );
        //                     ///
        //                   });
        //                 },
        //                 icon: const Icon(Icons.search,color: Colors.red,size: 30.0,),
        //               ),
        //               border: const OutlineInputBorder(
        //                 borderRadius: BorderRadius.all(Radius.circular(32.0)),
        //               ),
        //               focusedBorder: const OutlineInputBorder(
        //                 borderSide: BorderSide(color: Colors.transparent, width: 2.0),
        //                 borderRadius: BorderRadius.all(Radius.circular(32.0)),
        //               ),
        //               enabledBorder: const OutlineInputBorder(
        //                 borderSide: BorderSide(color: Colors.transparent, width: 1.0),
        //                 borderRadius: BorderRadius.all(Radius.circular(32.0)),
        //               ),
        //             ),
        //           ),
        //         ),
        //
        //         const SizedBox(
        //           height: 60.0,
        //         ),
        //
        //         const Padding(
        //           padding: EdgeInsets.symmetric(horizontal: 20.0),
        //           child: Text('Trending...',
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //               fontSize: 25.0,
        //             ),
        //           ),
        //         ),
        //
        //         const SizedBox(
        //           height: 20.0,
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        ///ORIGINAL CODE
        body:  Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0,top: 20.0),
                  child: Text('What do you want\nto cook today?',
                    style: TextStyle(
                      fontSize: 33.0,
                      color: Colors.white,
                      fontFamily: 'Kaisei Haruno Umi',
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30.0,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    onChanged: (value){
                      userFoodInput=value.toLowerCase();
                    },
                    style:  const TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                    decoration:   InputDecoration(
                      fillColor: const Color(0xFF9e9e9e), filled: true,//#9e9e9e C5D6DD
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Colors.white,fontSize: 20.0),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            Navigator.pushNamed(context, 'IngredientsScreen');
                            ///
                            // Navigator.push(context, CupertinoPageRoute(builder: (context)=>const
                            // IngredientsScreen()));
                            // Navigator.of(context).push(CupertinoPageRoute(builder: (context){
                            //   return const IngredientsScreen();
                            // }),
                            // );
                            ///
                          });
                        },
                        icon: const Icon(Icons.search,color: Colors.red,size: 30.0,),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 60.0,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Trending...',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      int foodSelect=Random().nextInt(foodList.length);
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(
                          child: Container(
                            height: 75.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white54,
                              ///Background Image///
                              // image: DecorationImage(
                              //   image://hits[0].recipe.image  hits[0].recipe.source
                              //   NetworkImage(foodImage[index]['recipe']['image']),
                              //   fit: BoxFit.cover,
                              //   colorFilter: ColorFilter.mode(
                              //       Colors.black.withOpacity(0.45),
                              //       BlendMode.dstATop),
                              // ),
                              ///Background Image///
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text(foodList[foodSelect],
                                      style: const TextStyle(
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Kaisei Haruno Umi',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap:(){
                            userFoodInput=foodList[foodSelect].toLowerCase();
                            Navigator.pushNamed(context, 'IngredientsScreen');
                          },
                        ),
                      );
                    },
                    itemCount:/*foodList.length*/ 8,
                    physics: const BouncingScrollPhysics(),
                  ),
                ),
              ],
            ),
        ),
    );
  }
}
