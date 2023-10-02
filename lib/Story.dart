import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {

List <dynamic> story= [
{"images":'assets/1.jpeg',"username":"Aman"},
{"images":'assets/2.jpeg',"username":"Anil"},
{"images":'assets/3.jpeg',"username":"Rahul"},
{"images":'assets/4.jpeg',"username":"Sakshi"},
{"images":'assets/5.jpeg',"username":"Neeraj"},
{"images":'assets/6.jpeg',"username":"Priya"},
{"images":'assets/7.jpeg',"username":"Himanshu"},
{"images":'assets/8.jpeg',"username":"Kunal"},
{"images":'assets/9.jpeg',"username":"HoneySing"},
];


@override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                    9, (index) {
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 67,
                        width: 67,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin:Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF9B2282),Color(0xFFEEA863)]),
                        ),

                        child: Container(
                          height: 65,width: 65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(

                                  boxShadow: [BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1
                                  )], shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('${story[index]["images"]}')
                                  )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text('${story[index]["username"]}',
                          style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                );


              }),),
            ),
          ),
        ],
      );
  }
}
