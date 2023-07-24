import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khaw/ui/home.dart';

class ProductDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Product Title',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
       centerTitle: true,
       backgroundColor: Colors.transparent,
       elevation: 0,
       leading: IconButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
       },icon: Icon(Icons.arrow_back_ios,color: Colors.pinkAccent,),),
       actionsIconTheme: IconThemeData(color: Colors.pinkAccent),

       actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
       ],
     ),
     backgroundColor: Color(0xA9D3E5FF),
     body: Padding(
       padding: EdgeInsets.only(left: 20,right: 20),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
Padding(
  padding: EdgeInsets.only(top: 10,bottom: 10),
  child:   Center(
    child: Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/361831749_617511793779812_8145352195974242457_n.png?_nc_cat=107&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGzlAe0qpiWxvKfs3EVFW_Q2XiT6t7ajEPZeJPq3tqMQwdjuAJ2UtOIou2DuQxszt3nuLmPdkWl3sbSGCUCQ2Ty&_nc_ohc=5T9yHpfoNBYAX_7xZcG&_nc_oc=AQm5FgxSvGo0t4uAePhJgpwmeoVSq0hoqPOd9zOJMEIrsYcokTAh9HhM-w3RckKpd-c&_nc_ht=scontent.fdac135-1.fna&oh=03_AdRTq8undlodUacj8U3HjuM1wWy0G_yo-ff32YVfMlCm3Q&oe=64E088DA'),
  ),
),
           Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   height: 30,
                   width: 30,
                   color: Colors.white,
                   child: Center(
                     child: Text('S',style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                 ),

                 Container(
                   height: 30,
                   width: 30,
                   margin: EdgeInsets.only(right: 10,left: 10),
                   color: Colors.pinkAccent,
                   child: Center(
                     child: Text('M',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                   ),
                 ),
                 Container(
                   height: 30,
                   width: 30,
                   color: Colors.white,
                   child: Center(
                     child: Text('L',style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                 ),
               ],
             ),
           ),
           SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Pasta',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
               Container(
                 height: 33,
                 width: 135,
                 color: Colors.white,
                 child: Padding(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('-',style:TextStyle(fontWeight: FontWeight.bold),),
                       Text('1',style:TextStyle(fontWeight: FontWeight.bold),),
                       Text('+',style:TextStyle(fontWeight: FontWeight.bold),),
                     ],
                   ),
                 ),

               ),
               Text('\$15.66',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
             ],
           ),
           SizedBox(height: 50,),
           Text('Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           SizedBox(height: 10,),
          RichText(text: TextSpan(children: [

            TextSpan(text: 'The cooking time for pasta varies depending on the shape and thickness of the noodles, '
                'but it typically takes about 8-10 minutes for dried pasta to cook through'),
            TextSpan(text: '.. Read More',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14))
          ]))
         ],
       ),
     ),
   );
  }
  
}