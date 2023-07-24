import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:khaw/ui/favourite.dart';
import 'package:khaw/ui/product_details.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(210),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(35),
                  bottomLeft: Radius.circular(35))),
          child: Padding(
            padding: EdgeInsets.only(top: 40, left: 8, right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.location_disabled,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Dhaka BD',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                          'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png'),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Rohan',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Fast Delivery',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white),
                        child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search Food',
                                helperStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                              prefixIcon: Icon(Icons.search),
                              prefixIconColor: Colors.pink.withOpacity(0.8),
                              suffixIcon: Icon(Icons.home),
                              suffixIconColor: Colors.pink
                            ),
                          ),

                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 33,left: 17,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                TextButton(onPressed: (){}, child: Text('See More',style: TextStyle(color: Colors.grey),))
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(

                     children: [
                       Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361908773_1154120612646737_505023908359945038_n.png?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEzmKAzRkOe-2fqJ7XMA4DEaqGjwGmwCEpqoaPAabAISuype5m823fz3ZgfII97D2hL-l9wdUTs1c0pikG0W51g&_nc_ohc=NtK0SNTUpHsAX8bKSP7&_nc_ht=scontent.fdac5-1.fna&oh=03_AdRD1zAFly8rpcPuOmU6vPBz4e-ew3IMgvQch1MfELfKvQ&oe=64DED4C0',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Pizza')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/361831749_617511793779812_8145352195974242457_n.png?_nc_cat=107&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGzlAe0qpiWxvKfs3EVFW_Q2XiT6t7ajEPZeJPq3tqMQwdjuAJ2UtOIou2DuQxszt3nuLmPdkWl3sbSGCUCQ2Ty&_nc_ohc=5T9yHpfoNBYAX_7xZcG&_nc_oc=AQm5FgxSvGo0t4uAePhJgpwmeoVSq0hoqPOd9zOJMEIrsYcokTAh9HhM-w3RckKpd-c&_nc_ht=scontent.fdac135-1.fna&oh=03_AdT7WmSdlR-d1Qms3DyywQ1V26-QNOXyM0pgHto4B3xsQw&oe=64DFA7DA',height: 70,width: 70,),
                       SizedBox(height: 5,),
                       Text('Pasta')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/361834050_235456089362454_3104941049923599717_n.png?_nc_cat=101&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEAtVCgoGSVlX9Kaac1wALdp2e6-ExlvNmnZ7r4TGW82d0upIe7zmlhXT8SyMtn8rxbXEdZTjjNMpx1T6ye9qrH&_nc_ohc=M3tJ0sVtavcAX_kt3Fk&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQhEmAnjsffx_hod_AyR8ooKcZSgWOxvL0PzH3NKu1z_w&oe=64DF9E42',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Juice')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Chicken')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361908773_1154120612646737_505023908359945038_n.png?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEzmKAzRkOe-2fqJ7XMA4DEaqGjwGmwCEpqoaPAabAISuype5m823fz3ZgfII97D2hL-l9wdUTs1c0pikG0W51g&_nc_ohc=NtK0SNTUpHsAX8bKSP7&_nc_ht=scontent.fdac5-1.fna&oh=03_AdRD1zAFly8rpcPuOmU6vPBz4e-ew3IMgvQch1MfELfKvQ&oe=64DED4C0',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Pizza')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361908773_1154120612646737_505023908359945038_n.png?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEzmKAzRkOe-2fqJ7XMA4DEaqGjwGmwCEpqoaPAabAISuype5m823fz3ZgfII97D2hL-l9wdUTs1c0pikG0W51g&_nc_ohc=NtK0SNTUpHsAX8bKSP7&_nc_ht=scontent.fdac5-1.fna&oh=03_AdRD1zAFly8rpcPuOmU6vPBz4e-ew3IMgvQch1MfELfKvQ&oe=64DED4C0',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Pizza')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361908773_1154120612646737_505023908359945038_n.png?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEzmKAzRkOe-2fqJ7XMA4DEaqGjwGmwCEpqoaPAabAISuype5m823fz3ZgfII97D2hL-l9wdUTs1c0pikG0W51g&_nc_ohc=NtK0SNTUpHsAX8bKSP7&_nc_ht=scontent.fdac5-1.fna&oh=03_AdRD1zAFly8rpcPuOmU6vPBz4e-ew3IMgvQch1MfELfKvQ&oe=64DED4C0',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Pizza')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361908773_1154120612646737_505023908359945038_n.png?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEzmKAzRkOe-2fqJ7XMA4DEaqGjwGmwCEpqoaPAabAISuype5m823fz3ZgfII97D2hL-l9wdUTs1c0pikG0W51g&_nc_ohc=NtK0SNTUpHsAX8bKSP7&_nc_ht=scontent.fdac5-1.fna&oh=03_AdRD1zAFly8rpcPuOmU6vPBz4e-ew3IMgvQch1MfELfKvQ&oe=64DED4C0',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Pizza')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361908773_1154120612646737_505023908359945038_n.png?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEzmKAzRkOe-2fqJ7XMA4DEaqGjwGmwCEpqoaPAabAISuype5m823fz3ZgfII97D2hL-l9wdUTs1c0pikG0W51g&_nc_ohc=NtK0SNTUpHsAX8bKSP7&_nc_ht=scontent.fdac5-1.fna&oh=03_AdRD1zAFly8rpcPuOmU6vPBz4e-ew3IMgvQch1MfELfKvQ&oe=64DED4C0',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Pizza')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361908773_1154120612646737_505023908359945038_n.png?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEzmKAzRkOe-2fqJ7XMA4DEaqGjwGmwCEpqoaPAabAISuype5m823fz3ZgfII97D2hL-l9wdUTs1c0pikG0W51g&_nc_ohc=NtK0SNTUpHsAX8bKSP7&_nc_ht=scontent.fdac5-1.fna&oh=03_AdRD1zAFly8rpcPuOmU6vPBz4e-ew3IMgvQch1MfELfKvQ&oe=64DED4C0',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Pizza')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361908773_1154120612646737_505023908359945038_n.png?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEzmKAzRkOe-2fqJ7XMA4DEaqGjwGmwCEpqoaPAabAISuype5m823fz3ZgfII97D2hL-l9wdUTs1c0pikG0W51g&_nc_ohc=NtK0SNTUpHsAX8bKSP7&_nc_ht=scontent.fdac5-1.fna&oh=03_AdRD1zAFly8rpcPuOmU6vPBz4e-ew3IMgvQch1MfELfKvQ&oe=64DED4C0',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Pizza')
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(

                     children: [
                       Image.network('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.15752-9/361908773_1154120612646737_505023908359945038_n.png?_nc_cat=100&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEzmKAzRkOe-2fqJ7XMA4DEaqGjwGmwCEpqoaPAabAISuype5m823fz3ZgfII97D2hL-l9wdUTs1c0pikG0W51g&_nc_ohc=NtK0SNTUpHsAX8bKSP7&_nc_ht=scontent.fdac5-1.fna&oh=03_AdRD1zAFly8rpcPuOmU6vPBz4e-ew3IMgvQch1MfELfKvQ&oe=64DED4C0',height: 50,width: 50,),
                       SizedBox(height: 5,),
                       Text('Pizza')
                     ],
                   ),

                 ],
               ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Food Menu',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87),),
                TextButton(onPressed: (){}, child: Text('See More',style: TextStyle(color: Colors.grey),))
              ],
            ),
          Expanded(
            flex: 3,
            child:  GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  crossAxisCount: 2,childAspectRatio: 0.82,crossAxisSpacing: 20,mainAxisSpacing: 20),
              scrollDirection: Axis.horizontal,
                 padding: EdgeInsets.only(top: 18,left: 8,right: 10,bottom: 10),
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                          0xEDFCCECE)),
                      child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                      ),

                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xEDFCCECE)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xEDFCCECE)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xFFEE739A)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xFFEE739A)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xFFEE739A)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xFFEE739A)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xFFEE739A)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xFFEE739A)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xFFEE739A)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(
                        0xFFEE739A)),
                    child: Padding(padding: EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Chicken',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/362170159_248089437991253_5210566496582901786_n.png?_nc_cat=109&cb=99be929b-3346023f&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFZJ7W-DJgWwCbK1G16eVoQAhoscpf1D1ACGixyl_UPUBmMfo021so_GNKQ-CLFS-BmImvz3vcf6LLAloD4abqO&_nc_ohc=NfH7uhrb2B4AX-E294D&_nc_ht=scontent.fdac135-1.fna&oh=03_AdQpSyg7bMTS-xJGrb1WbIU1iV8cmEL4qhErWGqNCEjk_w&oe=64DF8217')
                        ],
                      ),
                    ),

                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
