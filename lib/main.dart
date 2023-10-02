import 'package:clg/Post.dart';
import 'package:clg/Story.dart';
import 'package:flutter/material.dart';
import 'package:clg/NavBar.dart';
import 'package:clg/MyNetwork.dart';
import 'package:clg/Notice.dart';
import 'package:clg/Settings.dart';

void main (){
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget {
  const MYAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index=0;
  void update (int val){
    setState(() {
      print(val);
      index=val;
    });
  }

  Icon cusIcon=Icon(Icons.search,shadows: [
    Shadow(color: Colors.white10)
  ],);
  Widget cusSearchBar=Text("AppBar",style: TextStyle(color: Colors.white,),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading:  Builder(
          builder: (context) {
            return IconButton(
              onPressed: ()=>Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.account_circle,size: 20,),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                setState(() {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(Icons.cancel);
                    this.cusSearchBar=Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: 45,width: 230,
                          child: TextField(
                              style: TextStyle(color: Colors.white,backgroundColor: Colors.white24,fontSize: 17,),
                              textInputAction: TextInputAction.go,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white,width: 1.5,),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(color: Colors.white,width: 1.5),
                                ),
                              )
                          ),
                        ),
                      ),
                    );
                  }
                  else {
                    this.cusIcon=Icon(Icons.search,size: 20,);
                    this.cusSearchBar=Text("AppBar");
                  };
                });
              }, icon: cusIcon),
          Padding(
            padding: const EdgeInsets.only(right: .1),
            child: IconButton(onPressed: (){},
              icon: Icon(Icons.electric_bolt,size: 20,),
            ),
          )
        ],
        elevation: 20.0,
        shadowColor: Colors.cyan,
        title: cusSearchBar,
      ),

      body: Column(
        children: [
          StoryWidget(),
          Divider(color: Colors.cyan,),
          Expanded(child:PostWidegt()
          )
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        // onTap: update,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black87,
        backgroundColor: Colors.white10,
        iconSize: 25.0,
        items:[
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
              },
                icon:Icon(Icons.home,color: Colors.white,),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyNetwork()));
              },
                icon:Icon(Icons.people_outline,color: Colors.white,),
              ),label: "My Network"),




          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){},icon: Icon(Icons.add_circle_sharp,color: Colors.white,),
              ),label: "Post"),




          BottomNavigationBarItem(
              icon:IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Notice()));
              },
                icon: Icon(Icons.notifications,color: Colors.white),
              ),label:"Notifications" ),




          BottomNavigationBarItem(icon: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
          },
            icon:Icon(Icons.settings,color: Colors.white),
          ),label: "Setting"),
        ],
        elevation: 20.0,
        showUnselectedLabels: true,
        showSelectedLabels: true,

      ),
    );
  }
}
