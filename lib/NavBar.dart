import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,
      elevation: 20.0,
      shadowColor: Colors.cyanAccent,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Harsh Bhatt"),
            accountEmail: Text("bhattharsh514@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.black,
              // foregroundColor: Colors.black,
              child: Icon(Icons.account_circle,size: 60,),
            ),
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
          ),
          ListTile(leading: Icon(Icons.favorite,color: Colors.white10,size: 30,),
            title: Text('favourite',style: TextStyle(color: Colors.white10,fontSize: 25),),
            onTap: ()=>null,
          ),ListTile(leading: Icon(Icons.people,color: Colors.white10,size: 30,),
            title: Text('friends',style: TextStyle(color: Colors.white10,fontSize: 25),),
            onTap: ()=>null,
          ),ListTile(leading: Icon(Icons.share,color: Colors.white10,size: 30,),
            title: Text('Share',style: TextStyle(color: Colors.white10,fontSize: 25),),
            onTap: ()=>null,
          ),ListTile(leading: Icon(Icons.notifications,color: Colors.white10,size: 30,),
            title: Text('Request',style: TextStyle(color: Colors.white10,fontSize: 25),),
            onTap: ()=>null,
          ),ListTile(leading: Icon(Icons.settings,color: Colors.white10,size: 30,),
            title: Text('Settings',style: TextStyle(color: Colors.white10,fontSize: 25),),
            onTap: ()=>null,
          ),ListTile(leading: Icon(Icons.description,color: Colors.white10,size: 30,),
            title: Text('Policies',style: TextStyle(color: Colors.white10,fontSize: 25),),
            onTap: ()=>null,
          ),ListTile(leading: Icon(Icons.exit_to_app,color: Colors.white10,size: 30,),
            title: Text('Exit',style: TextStyle(color: Colors.white10,fontSize: 25),),
            onTap: ()=>null,
          ),
        ],
      ),
    );
  }
}
