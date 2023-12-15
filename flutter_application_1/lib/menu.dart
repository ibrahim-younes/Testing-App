import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar:NavigationBar( // bottom bar that contain menu,profile and profile
       destinations: const [
           NavigationDestination(icon: Icon(Icons.home), label: 'Menu'),
           NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.shopping_bag), label: 'Cart'),

         ],
         onDestinationSelected:(int index){ // to click on menu and profile
         setState(() { 
          currentPage = index;
          });
         } ,
         selectedIndex: currentPage,
       ),
    );
  }
}
