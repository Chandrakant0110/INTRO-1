import 'package:flutter/material.dart';
import './HomeScreen.dart';

class Welcome extends StatelessWidget {

  static const String route='/ShowMarks';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Center(child:Text("INTRO"))),
      body:
      Container(

        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 25),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("WHAT YOU LOOKING FOR HERE :- \n",style:TextStyle(fontSize: 15)) ,
            Text("1. This is an AI powered social media app which describes anyone in just 5 simple words.\n"
                "2. The purpose of this app is to make you know about like minded people just like u.\n"
                "3. And the one who matches your frequency and vibe.\n",style:TextStyle(fontSize: 10)),
            ElevatedButton(onPressed: (){

               Navigator.of(context).pushReplacementNamed(HomeScreen.route);
            }, child: Text("FROM TODAY, I'LL MAKE WISE CHOICES."))
          ],
        )

        ),

    );
  }
}
