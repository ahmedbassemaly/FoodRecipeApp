import 'package:flutter/material.dart';
import 'package:food_recipe/food_screens/bottom_navigation_bar.dart';
import 'package:food_recipe/food_screens/saved_screen.dart';
import 'package:food_recipe/user_simple_preferences.dart';
import 'cover_page.dart';
import 'food_screens/home_screen.dart';
import 'food_screens/ingredients_screen.dart';

Future<void> main() async {
  ///The following 2 lines are for the SharedPreferences///
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();
  /// /// /// /// /// /// /// /// /// /// /// /// /// ///
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'CoverPage',
      routes: {
        'CoverPage':(context)=>  const CoverPage(),
        'NavigationBar':(context)=>const NavigationBar(),
        'HomeScreen':(context)=>  const HomeScreen(),
        'SavedItems':(context)=>const SavedItems(),
        'IngredientsScreen':(context)=> const IngredientsScreen(),
      },
    );
  }
}