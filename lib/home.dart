import 'package:flutter/material.dart';
import 'package:shopping_app/pages/detailPage.dart';
import 'package:shopping_app/pages/detailPage2.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(topLeft:Radius.circular(25),topRight:Radius.circular(25),),
          boxShadow: [
            BoxShadow(
                    blurRadius: 20,
                    color: Colors.grey[600],
                    spreadRadius: 1,
          ),
          ],
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                buildBottomContainer(Icons.favorite),
                buildBottomContainer(Icons.search),
                buildBottomContainer(Icons.person,isSelected: true,),
                buildBottomContainer(Icons.shopping_cart,),
                buildBottomContainer(Icons.settings),
          ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 0,
        title: Text('Xpress Store',style: TextStyle(fontSize: 25.0,letterSpacing: 1, fontWeight: FontWeight.bold, color: Colors.black),),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){},
          child: Icon(Icons.home),
        ),
       actions: [
          Padding(padding: EdgeInsets.only(right: 15.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(Icons.mic),
          ),
        
          ),
        ],
      ),
      body: Column(
        
        children: [
          SizedBox(
            height: 10,
          ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                  children: [
                    buildFlatButton('Mens',isSelected: true),
                    buildFlatButton('Womens'),
                    buildFlatButton('Kids'),
                  ],


                ),
               SizedBox(
                 height: 15,
               ),
               Expanded(
                       child:Container(
                         decoration: BoxDecoration(
                           color:Colors.white,
                           borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(25),
                             topRight: Radius.circular(25),
                           ),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey,
                               spreadRadius: 1,
                               blurRadius: 20,
                             ),
                           ]
                         ),
                         child: SingleChildScrollView(
                           physics: BouncingScrollPhysics(),
                                  child: Column(
                               children:[
                                 SizedBox(height: 15),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     buildColumn('Dresses',isSelected: true),
                                     buildColumn('Pants'),
                                     buildColumn('Watches'),
                                     buildColumn('Sunglasses'),
                                     buildColumn('Spray'),
                                     buildColumn('Shoes'),
                                   ],
                                 ),
                                 SizedBox(height:10),
                                MyDetailedPage(),
                                 LineBar(),
                                 Padding(
                                   padding: const EdgeInsets.all(30.0),
                                      child: Row(
                                     children: [
                                       Text('Todays Special Offers',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                     ],
                                   ),
                                 ),
                                 MyDetailedPage2(),
                               ],
                           ),
                         ),
                       ),
               ),
              ],
          ),
    );
  }

  Container buildBottomContainer(IconData icon,{isSelected=false}) {
    return Container(
              decoration: BoxDecoration(
                color: isSelected?Colors.pink[100]:Colors.white,
                shape: BoxShape.circle,
                boxShadow:isSelected? [
                  BoxShadow(color:Colors.grey[600],blurRadius:20,spreadRadius:2)
                ]:[],
              ),
              height: 40,
              width: 40,
              child: Icon(icon,color: isSelected?Colors.white:Colors.black,),
            );
  }

  
  FlatButton buildFlatButton(String text,{bool isSelected=false}){
    return FlatButton(
      onPressed:(){},
        child: Text(text,style: TextStyle(color: isSelected?Colors.white:Colors.black,fontSize: 15.0),),
        shape: StadiumBorder(),
        color: isSelected?Colors.pink[100]:Colors.grey[300],


    );
  }
}

class MyDetailedPage2 extends StatelessWidget {
  const MyDetailedPage2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     scrollDirection: Axis.horizontal,
     physics: BouncingScrollPhysics(),
     child: Row(
        children: [
          buildContainer1('assets/images/watches.png','Watches','25%', context),
          buildContainer1('assets/images/spray.png','Perfume','20%', context),
          buildContainer1('assets/images/shoes.png','Shoes','50%', context),
          buildContainer1('assets/images/jeans.png','Jeans','60%', context),
          buildContainer1('assets/images/sunglasses.png','Glasses','40%', context),
          buildContainer1('assets/images/shirts.png','Shirts','70%', context),
        ],
        ),
    );
  }
  GestureDetector buildContainer1(String img, String title, String price, BuildContext context) {
    return GestureDetector(
      onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context){
                 return DetailPages(img: img, title: title, context: context, price: price,);

               }));
             },
          child: Container(
                                     height: 125,
                                     width: 200,
                                     margin: EdgeInsets.only(left:20,),
                                     
                                     child:Row(
                                       children: [
                                         ClipRRect(
                                           borderRadius: BorderRadius.circular(20.0),
                                           child: SizedBox(
                                             height: 150,
                                             width: 100,

                                             child: Image.asset(img,fit: BoxFit.cover,),
                                             )
                                           ),
                                         Padding(
                                           padding: const EdgeInsets.all(10.0),
                                             child: Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                               Text(''),
                                               Text(price)

                                             ],
                                           ),
                                         ),

                                       ],
                                     ),
                                   ),
    );
  }
}

class MyDetailedPage extends StatelessWidget {
  const MyDetailedPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView (
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
         children: [
           buildColumn1('assets/images/shirt1.png', 'Roadster', 'Rs 699', context),
           buildColumn1('assets/images/shirt2.png', 'Allen Solly', 'Rs 1599', context),
           buildColumn1('assets/images/shirt3.png', 'Levis', 'Rs 1299', context),
           buildColumn1('assets/images/dress1.png', 'Roadster', 'Rs 489', context),
           buildColumn1('assets/images/dress2.png', 'HRX', 'Rs 599', context),
         ],
       ),
     );
  }
 GestureDetector buildColumn1(String img, String title, String price, BuildContext context) {
    return GestureDetector(
      onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context){
                 return DetailPages(img: img,title: title,context: context,price: price,);

               }));
             },
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
                                       children: [
                                         Container(
                                           height: 140,
                                           width: 100,
                                           child :ClipRRect(
                                             borderRadius:BorderRadius.circular(25),
                                             child: Image.asset(img),
                                             ),

                                          ),
                                          SizedBox(height:10,),
                                          Text(title),
                                          Text(price),
                                       ],
                                     ),
      ),
    );
  }
}

class LineBar extends StatelessWidget {
  const LineBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left:25),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft: Radius.circular(10))
      ),
      alignment: Alignment.centerLeft,
      child: Container(
        height:5,
        width:80,
        decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(topLeft:Radius.circular(10),bottomLeft: Radius.circular(10))
      ),
      ),
    );
  }
}

Column buildColumn(String text,{bool isSelected=false}){
  return Column(
    children: [
      Text(text,style: TextStyle(color: isSelected?Colors.cyan:Colors.black,fontSize: 15.0)),
      SizedBox(height: 5,),
      if(isSelected==true)
      Container(
        height: 5,
        width: 5,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
      ),
    ],
  );
}



