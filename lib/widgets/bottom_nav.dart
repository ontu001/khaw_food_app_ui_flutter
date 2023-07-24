import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khaw/ui/cart.dart';
import 'package:khaw/ui/favourite.dart';
import 'package:khaw/ui/home.dart';
import 'package:khaw/ui/profile.dart';

class BottomNavbar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return BottomNavbarState();
  }

}

class BottomNavbarState extends State<BottomNavbar>{
  int _currentIndex = 0;
  final _pages=[
    Home(),
    Cart(),
    Favourite(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.grey,
           elevation: 5,

        onTap: (int index){
          _currentIndex= index;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }

}