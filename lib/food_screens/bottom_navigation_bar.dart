import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/food_screens/ingredients_screen.dart';
import '../cover_page.dart';
import 'home_screen.dart';
import 'saved_screen.dart';
import 'my_account.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  ///
  int _selectedIndex = 0;
  final CupertinoTabController _controller = CupertinoTabController();
  final myKey = GlobalKey<_NavigationBarState>();

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
      _controller.index = index;
      print(_selectedIndex);
    });
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

///
  final List<Widget> _children=[
    const HomeScreen(),
    const IngredientsScreen(),
    const SavedItems(),
    MyAccount(),
  ];
///

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //#9e9e9e #bdbdbd #ff7043 #ff5722 #ff8a65
        backgroundColor: const Color(0xFFff8a65),
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          showUnselectedLabels: true,
          //type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 25.0,),
              label: 'Home',
              backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book,
                size: 25.0,
              ),
              label: 'Ingredients',
              backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                size: 25.0,
              ),
              label: 'Saved',
              backgroundColor: Colors.redAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 25.0,
              ),
              label: 'Account',
              backgroundColor: Colors.redAccent,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTaped,
        ),
      ),

    );
  }
///
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: CupertinoTabScaffold(
//         controller: _controller,
//         key: myKey,
//         tabBar: CupertinoTabBar(
//           backgroundColor: Colors.redAccent,
//           activeColor: Colors.black,
//           inactiveColor: Colors.white70,
//           iconSize: 35,
//           //currentIndex: _selectedIndex,
//           onTap: _onItemTaped,
//
//           items:const <BottomNavigationBarItem> [
//             BottomNavigationBarItem(
//                       icon: Icon(Icons.home,),
//                       label: 'Home',
//                     ),
//             BottomNavigationBarItem(
//                       icon: Icon(Icons.menu_book,),
//                       label: 'Ingredients',
//                     ),
//             BottomNavigationBarItem(
//                       icon: Icon(Icons.bookmark,),
//                        label: 'Saved',
//                     ),
//             BottomNavigationBarItem(
//                       icon: Icon(Icons.account_circle_outlined,),
//                       label: 'Account',
//                     ),
//           ],
//         ),
//         tabBuilder: (context,_currentIndex){
//           switch(_currentIndex){
//             case 0:
//               return CupertinoTabView(builder: (context){
//                 return const CupertinoPageScaffold(child: HomeScreen(),);
//               });
//             case 1:
//               return CupertinoTabView(builder: (context){
//                 return const CupertinoPageScaffold(child: IngredientsScreen(),);
//               });
//             case 2:
//               return CupertinoTabView(builder: (context){
//                 return const CupertinoPageScaffold(child: SavedItems(),);
//               });
//             case 3:
//               return CupertinoTabView(builder: (context){
//                 return  CupertinoPageScaffold(child: MyAccount(),);
//               });
//             default:
//               return CupertinoTabView(builder: (context){
//                 return  const CupertinoPageScaffold(child: CoverPage(),);
//               });
//           }
//         },
//       ),
//     );
//   }
}
