import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostWidegt extends StatelessWidget {
  const PostWidegt({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(),
                  image: DecorationImage(image: AssetImage('assets/1.jpeg')),
                ),
              ),
              title: Text(
                'Aman_123',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'Jaipur,Rajsathan',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
            Container(
              height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage('assets/1.jpeg'))
            ),
            ),
            ListTile(
              leading: Wrap(children: [
                Icon(Icons.favorite,color: Colors.red,),
                SvgPicture.asset("assetName")
              ],),
            )
          ],
        );
      },
    );
  }
}
