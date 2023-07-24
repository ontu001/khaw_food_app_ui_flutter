import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khaw/ui/home.dart';
import 'package:khaw/widgets/bottom_nav.dart';

class Onboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100,bottom: 40),
              child: Center(
                child: Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/361940031_1198077594201490_1532156235137476330_n.png?_nc_cat=107&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEWb9eyzc-bbZ4W_FAYYAgZ3aqh0a7Mlo_dqqHRrsyWj90up_XZ0st1adIDCzh2Y2H3kxJknCtgZcy4bO3HcZ8s&_nc_ohc=rWM0j_tvMgUAX_XT6HU&_nc_ht=scontent.fdac135-1.fna&oh=03_AdRvFEtZfc2GXV78D_ti_Xr-Smk-M9pDT4sGxRFatLmwvw&oe=64DE1944',height: 400,width: 400,),
                ),
              ),
            RichText(text: TextSpan(children:[

              TextSpan(text: 'The  ',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black87)),
              TextSpan(text: 'fastest in',style: TextStyle(fontSize: 40,color: Colors.pink,fontWeight: FontWeight.bold)),
            ])),
            RichText(text: TextSpan(children:[

              TextSpan(text: 'Delivery  ',style: TextStyle(fontSize: 40,color: Colors.pink,fontWeight: FontWeight.bold)),
              TextSpan(text: 'Only Food',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black87)),
            ])),
            SizedBox(height: 30),
            Text('Our job is to filling your tummy',style: TextStyle(fontSize: 16,color: Colors.grey),),
            Text('With delicious food and fast',style: TextStyle(fontSize: 16,color: Colors.grey),),
            Text('delivery',style: TextStyle(fontSize: 16,color: Colors.grey),),

            Padding(padding: EdgeInsets.only(top: 100),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavbar()));
              },
              child: Container(
                height: 40,
                width: 400,
                decoration: BoxDecoration(       borderRadius: BorderRadius.circular(40),
                  color: Colors.pink

                ),
                child: Center(
                    child: Text('Get Started',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),

                ),


              ),
            ),
            )

          ],
        ),
      ),
    );
  }

}