import 'package:flutter/material.dart';

class BMIRESULT_SCREEN extends StatelessWidget {
  //const BMIRESULT_SCREEN({Key? key}) : super(key: key);
final int age;
final int result;
bool isMale;
BMIRESULT_SCREEN({
 @required this.age,
@required  this.result,
 @required this.isMale,

});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI RESULT'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(''
                'Gender : ${isMale? 'male': 'female'}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(''
                'AGE : ${age}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(''
                'RESULT : ${result}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
