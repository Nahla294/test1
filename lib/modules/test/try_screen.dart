import 'package:course_app/shared/components%20/components.dart';
import 'package:flutter/material.dart';

class try_screen extends StatefulWidget {
  //const try_screen({Key? key}) : super(key: key);

  @override
  _try_screenState createState() => _try_screenState();
}

class _try_screenState extends State<try_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ABOUT US!")),
        backgroundColor: Color.fromRGBO(115, 147, 179,1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),

        ),


      ),
      body:Column(
        children: [
         shape(
           text_size: 19,
           data: 'Welcome to Color Hermony!\nWe are a group of six and we all students at faculty of computer science and artificial intelligence ,we made this aplication as a graduation project for color blindness people mainly to help them with their daily routine.\nWe tried to build the perfect whole application that have all needed features for making life a little bit easy for color blindness people.\nWe know that you are not a minor faction and it was not easy for you and we care alot about you.\nHope you all find this application as useful as we expect it to be',
         )

        ],
      ),
    );
  }
}
