import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/bottom_navigation_bar_item.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        elevation: 0,
        title: Text('Xpress Store',style: TextStyle(fontSize: 25.0,letterSpacing: 1, fontWeight: FontWeight.bold, color: Colors.black),),
        leading: GestureDetector(
          onTap: (){},
          child: Icon(Icons.home),
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 15.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(Icons.search),
          ),
          ),
          Padding(padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 15,
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
                 height: 20,
               ),
               Expanded(
                       child:Container(
                         decoration: BoxDecoration(
                           color:Colors.white,
                           borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(30),
                             topRight: Radius.circular(30),
                               bottomLeft: Radius.circular(30),
                             bottomRight: Radius.circular(30),

                           ),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey,
                               spreadRadius: 1,
                               blurRadius: 20,

                             ),
                           ]
                         ),
                       ),
               ),
              ],
          ),




    );
  }
  FlatButton buildFlatButton(String text,{bool isSelected=false}){
    return FlatButton(
      onPressed:(){},
        child: Text(text,style: TextStyle(color: isSelected?Colors.white:Colors.black,fontSize: 18.0),),
        shape: StadiumBorder(),
        color: isSelected?Colors.pink[100]:Colors.grey[300],


    );
  }
}



