import 'package:flutter/material.dart';
import 'package:clg/main.dart';

import 'MyNetwork.dart';
import 'Settings.dart';
class Notice extends StatelessWidget {
  const Notice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 20.0,
        shadowColor: Colors.cyanAccent[100],
        title: Text("Notice",style: TextStyle(color: Colors.cyan[900]),),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back,color: Colors.black87,
          ),
        ),
      ),
      backgroundColor: Colors.black87,
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        backgroundColor: Colors.white10,
        iconSize: 25.0,
        items:[
          BottomNavigationBarItem(icon: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
          },icon:Icon(Icons.home,color: Colors.white,)),label: "Home"),


          BottomNavigationBarItem(icon: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNetwork()));
          }, icon:Icon(Icons.people_outline,color: Colors.white,),),label: "My Network"),


          BottomNavigationBarItem(icon: IconButton(onPressed: (){},icon: Icon(Icons.add_circle_sharp,color: Colors.white,),),label: "Post"),


          BottomNavigationBarItem(icon:IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Notice()));
          },icon: Icon(Icons.notifications,color: Colors.white),),label:"Notifications" ),


          BottomNavigationBarItem(icon: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
          },icon:Icon(Icons.settings,color: Colors.white),),label: "Setting"),
        ],
        elevation: 20.0,

      ),
    );
  }
}
