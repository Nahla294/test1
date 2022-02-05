import 'dart:math';

import 'package:course_app/modules/bmi_result/BMIRESULT_Screen.dart';
import 'package:flutter/material.dart';

class BMI_Screen extends StatefulWidget {
  //const BMI_Screen({Key? key}) : super(key: key);

  @override
  _BMI_ScreenState createState() => _BMI_ScreenState();
}

class _BMI_ScreenState extends State<BMI_Screen> {
  bool isMale = true;
  double height= 120;
  int weight=40;
  int age=18;
  final String Data='answer2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'
        ),
      ),
      body: Column(

        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale= true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image: AssetImage('assets/images/male.jpg'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isMale ? Colors.blue :Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale= false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: !isMale ? Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         '${height.round()}',
                         style: TextStyle(
                           fontSize: 45.0,
                           fontWeight: FontWeight.w900,
                         ),
                       ),
                       SizedBox(
                         width: 5.0,
                       ),
                       Text(
                         'cm',
                         style: TextStyle(
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ],
                    ),
                    Slider(
                      max: 250.0,
                        min: 80.0,
                        value: height,
                        onChanged: (value){
                          setState(() {
                            height=value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${age}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed:
                                  (){
                                setState(() {
                                  age--;

                                });
                                  },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),

                                  ),
                              FloatingActionButton(onPressed:
                                  (){
                                setState(() {
                                  age++;
                                });
                                  },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            '${Data}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed:
                                  (){
                                setState(() {
                                  Data;
                                });
                                  },
                                heroTag: 'weight-',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),

                              ),
                              FloatingActionButton(onPressed:
                                  (){
                                setState(() {
                                  weight++;
                                });
                                  },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),
          Container(
            height: 50.0,
            color: Colors.blue,
            width:double.infinity,
            child: MaterialButton(
              onPressed: ()
            {
              double result = weight/ pow(height/100,2);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context)=> BMIRESULT_SCREEN(
                        age: age,
                        result: result.round(),
                        isMale: isMale,
                      ),
                      ),
              );
            },
             child: Text(
               'Calculate',
               style: TextStyle(
                 color: Colors.white,

               ),
             ),
            ),
          ),
        ],
      ),
    );
  }
}
