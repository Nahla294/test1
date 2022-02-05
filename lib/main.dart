import 'package:course_app/layout/Home_Page.dart';
import 'package:course_app/modules/bmi_result/BMIRESULT_Screen.dart';
import 'package:course_app/modules/counter_screen/Counter_Screen.dart';
import 'package:course_app/modules/login_screen/Login_screen.dart';
import 'package:course_app/modules/messenger_screen/Messenger_Screen.dart';
import 'package:course_app/modules/tasks_done_screen/done_screen.dart';
import 'package:course_app/modules/tasks_done_screen/test_screen.dart';
import 'package:course_app/modules/test/try_screen.dart';
import 'package:course_app/modules/users_screen/Users_Screen.dart';
import 'package:course_app/modules/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'modules/bmi_screen/BMI_Screen.dart';
import 'modules/detect_screen/Detect_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        // This is the theme of your application.
        //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: test_screen(),
    );
  }

}
class ScrollView extends StatelessWidget {
  final dataKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      primary: true,
      appBar: new AppBar(
        title: const Text('Home'),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new SizedBox(height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(height: 160.0, width: double.infinity, child: new Card()),
            new SizedBox(height: 160.0, width: double.infinity, child: new Card()),
            // destination
            new Card(
              key: dataKey,
              child: new Text("data\n\n\n\n\n\ndata"),
            )
          ],
        ),
      ),
      bottomNavigationBar: new FloatingActionButton(
        onPressed: () => Scrollable.ensureVisible(dataKey.currentContext),
        child: new Text("Scroll to data"),
      ),
    );
  }
}
///////////////////////////////////////////////////////
class HomePage extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  final double _height = 100.0;
  final int index=1;

  void _animateToIndex(int index) {
    _controller.animateTo(
      index * _height,
      duration: Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_downward),
        onPressed: () => _animateToIndex(index),
      ),
      body: ListView.builder(
        controller: _controller,
        itemCount: 20,
        itemBuilder: (_, i) {
          return SizedBox(
            height: _height,
            child: Card(
              color: i == 10 ? Colors.blue : null,
              child: Center(child: Text('Item $i')),
            ),
          );
        },
      ),
    );
  }
}