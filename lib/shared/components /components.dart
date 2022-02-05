import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

Widget DefaultButton({
  @required String text,
  @required VoidCallback function,
  double width: double.infinity,
  Color background: Colors.blue,
  double radius: 3.0,

})=> Container(
// alignment: Alignment.center,
width: width,

child: MaterialButton(
  onPressed: function,

child: Text(
text.toUpperCase(),
style: TextStyle(
color: Colors.white,
),
),
),
  decoration: BoxDecoration(
    color: background,
    borderRadius: BorderRadius.circular(
      radius,
    ),
  ),
);

Widget DefaultForm({
@required TextEditingController controller,
  @required TextInputType type,
  @required String label,
  @required Function validate,
  @required IconData prefix,
  IconData suffix,
  bool isPassword= false,
 VoidCallback suffixPressed,

})=>  TextFormField(
controller: controller,
obscureText: isPassword,
keyboardType: type,
decoration: InputDecoration(
labelText: label,
// hintText: 'E-mail Address',
border:OutlineInputBorder(),
prefixIcon: Icon(
prefix,
),
  suffixIcon: suffix !=null?
  IconButton( onPressed: suffixPressed,
    icon: Icon(
        suffix,
    ),
  ) : null,
),
  validator: validate,
);

Widget Button({
  @required background_color,
  @required VoidCallback function,
  double width: double.infinity,
})=>
Container(
  width: width,
  color: background_color,

child: MaterialButton(
onPressed: function,
child: Text(
 'what is color blindness',
  style: TextStyle(
    color: Colors.white,
  ),
),
),
);

Widget Answer({
  @required String message,
})=>
   Container(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start ,
      children: [
        Container(
          height: 55,
          width: 55,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/55442f2018fd5e2781c732f90f1f7756.jpg"),
          ),
        ) ,

        Padding(
          padding: EdgeInsets.all(10.0),
          child: Bubble(
              radius: Radius.circular(20.0),
              color: Color.fromRGBO(115, 147, 179, 1.0),
              elevation: 0.0,

              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Flexible(
                        child: Container(
                          constraints: BoxConstraints( maxWidth: 250),
                          child: Text(
                            message,
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 17),
                          ),
                        ))
                  ],
                ),
              )),
        ),


      ],
    ),
  );

Widget send({
  @required String message,
  @required Function function,
})=>
    Container(
      padding: EdgeInsets.only(left: 10, right: 10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.end ,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Bubble(
                radius: Radius.circular(20.0),
                color: Color.fromRGBO(112, 128, 144, 1.0),
                elevation: 0.0,

                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                          child: Container(
                            constraints: BoxConstraints( maxWidth: 250),
                            child:Container(
                              height: 28.0,
                              child: MaterialButton(
                                  padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                                 // minWidth: double.infinity,
                                  onPressed:function,
                                child:Text(
                                  message,
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 17),
                                )

                              ),
                            ),


                          ))
                    ],
                  ),
                )),
          ),
          Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profilepic.png"),
            ),
          ) ,


        ],
      ),
    );

Widget shape({
  String data,
  double result,
  double text_size,

})=> Expanded(
  child: Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 80.0,
      horizontal: 40.0,
    ),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Text(
                '${data}',
                style: TextStyle(
                  fontSize: text_size,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Color.fromRGBO(115, 147, 179,0.05),
        border: Border.all(color: Colors.grey.withOpacity(0.08)),
      ),
    ),
  ),
);

