import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khaw/ui/home.dart';
import 'package:khaw/ui/onboard.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }

}

class SplashState extends State<Splash>{
 @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361630311_737262998405047_3153339295496797201_n.png?_nc_cat=105&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeE8CeqfPg6nb8D6jfGgsBWMsS2InqqyZV2xLYieqrJlXeYTeWyKSiAh3fRjrCuybp1XCQhKvAmlAqi5Lexiufp6&_nc_ohc=Os4QE_wzSC4AX_tjXDg&_nc_ht=scontent.fdac5-1.fna&oh=03_AdR5DRo3R2abvRnbl4jozjkEd52xnS4_JC7MFey8csyo8Q&oe=64DCEFB6',width: 500,),
      ),
    );
  }

}