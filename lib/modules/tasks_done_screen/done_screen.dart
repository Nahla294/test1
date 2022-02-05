import 'package:course_app/shared/components%20/components.dart';
import 'package:flutter/material.dart';

String data1;
String data2;
int weight;
bool pressed= false;
bool isvisible=false;
bool isvisible1=false;
class DoneScreen extends StatefulWidget {
  //const DoneScreen({Key? key}) : super(key: key);
  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:
Column(
  children: [
    SizedBox(
      height: 40.0,
    ),
    FloatingActionButton(onPressed:
        (){
      setState(() {
        data1='question1 answer';
        isvisible=true;
      });
    },
      mini: false,
      child: Text(
        'q1',
      ),

    ),
    SizedBox(
      height: 4,
    ),
    SizedBox(
      height: 4.0,
    ),
    FloatingActionButton(onPressed:
        (){
      setState(() {
        data2='question2 answer';
        isvisible1=true;
      });
    },

        child: Text(
        'q2',
      ),

    ),
    SizedBox(
      height: 4.0,
    ),
    Visibility(
      visible: isvisible,
      child: Text(
        '${data1}',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),

    Visibility(
      visible: isvisible1,
      child: Text(
        '${data2}',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
    Visibility(
      visible: isvisible,
      child:  FloatingActionButton(onPressed:
          (){
        setState(() {
          data2='question2 answer';
          isvisible1=true;
        });
      },

        child: Text(
          'q2',
        ),

      ),
    ),
 /*   Button(
      background_color: Colors.blue,
      function: (){
        pressed=false;
        print('question1');

      },
    ),
    Button(
      background_color: Colors.blue,
      function: (){
        pressed=true;
      //  function2 (pressed),
        print('question2');

      },
    ),*/
    /*DefaultButton(
      text: 'login',
      function: ()
      {
        pressed=true;
        if(pressed==true){
          print('hii');

        }
      },
      background: Colors.red,
      radius: 10.0,
    ),*/
    /*DefaultButton(
      text: 'exit',
      function: ()
      {
        pressed=true;
        if(pressed==true){
          print('hii2');
        }
      },
      background: Colors.red,
      radius: 10.0,
    ),*/
  ],
),

    );
  }

}
