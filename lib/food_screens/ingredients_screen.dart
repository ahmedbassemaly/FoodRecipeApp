import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/food_screens/saved_screen.dart';
import '../api_screen.dart';
import '../food_components_ingredients.dart';
import '../user_simple_preferences.dart';
import 'home_screen.dart';

class IngredientsScreen extends StatefulWidget {
  const IngredientsScreen({Key? key}) : super(key: key);

  @override
  _IngredientsScreenState createState() => _IngredientsScreenState();
}

class _IngredientsScreenState extends State<IngredientsScreen> {

  void getIngredients()async{
    try{
      List ingredients=await Ingredients().foodRecipe(userFoodInput);

      setState(() {
        foodComponents=ingredients;
      });
    } catch(e){
      (e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    getIngredients();
    ///Shared Preference
    savingList=UserSimplePreferences.getSavedList(savingList) ?? [];
    ///
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       backgroundColor: Colors.white,
        body:Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/backgroundImage${Random().nextInt(6)}.jpg'),
              fit: BoxFit.fill,
            ),
          ),

          child:Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:<Widget> [

              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context,index){

                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(30),
                          image: foodComponents[index]['image']!=null
                            ?DecorationImage(
                                image: NetworkImage(foodComponents[index]['image']),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),)
                            :const DecorationImage(image: AssetImage('images/whiteBackgroundImage.jpg'),)
                        ),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:<Widget> [
                            FoodComponentsIngredients('${foodComponents[index]['text']}',23),

                            FoodComponentsIngredients('Food:\t\t${foodComponents[index]['food']}',17),

                            FoodComponentsIngredients('Food Category:\t${foodComponents[index]['foodCategory']}',17),

                            FoodComponentsIngredients('Quantity:\t\t${foodComponents[index]['quantity'].toStringAsFixed(1)}',17),

                            FoodComponentsIngredients('Weight:\t\t${foodComponents[index]['weight'].toStringAsFixed(1)}',17),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount:/*foodComponents==null?0:*/foodComponents.length,
                  physics: const BouncingScrollPhysics(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 10.0,right: 10.0,bottom: 25.0),
                child: FloatingActionButton(//#bdbdbd  9e9e9e #b0bec5 #263238 #37474f
                  backgroundColor: const Color(0xFF263238),
                  onPressed: () async{
                    if(savingList.contains(userFoodInput)) {
                      print('it contains');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Your item already exists'),
                          duration: const Duration(milliseconds: 10000),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          action: SnackBarAction(
                            label: 'View',
                            onPressed: (){
                              Navigator.pushNamed(context, 'SavedItems');
                              //Navigator.push(context, CupertinoPageRoute(builder: (context)=>const SavedItems()));
                            },
                          ),
                        ),
                      );
                    }

                    else{
                      savingList.add(userFoodInput);
                      ///Shared Preference
                      await UserSimplePreferences.setSavedList(savingList);
                      ///
                      print("it doesn't contains");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Your item has been saved'),
                          duration: const Duration(milliseconds: 10000),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          action: SnackBarAction(
                            label: 'View',
                            onPressed: (){
                              Navigator.pushNamed(context, 'SavedItems');
                              //Navigator.push(context, CupertinoPageRoute(builder: (context)=>const SavedItems()));
                            },
                          ),
                        ),
                      );
                    }
                  },
                  child: const Icon(Icons.bookmark,color: Colors.yellow,size: 35.0,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


