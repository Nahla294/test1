import 'package:course_app/modules/tasks_archived_screen/archived_screen.dart';
import 'package:course_app/modules/tasks_done_screen/done_screen.dart';
import 'package:course_app/modules/tasks_screen/tasks_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int CurrentIndex=0;
List<Widget>Screens=[
  TasksScreen(),
  DoneScreen(),
  ArchivedScreen(),
];
List<Text>titles=[
Text('Tasks Screen'),
  Text('Done Screen'),
  Text('Archived Screen'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titles[CurrentIndex],
      ),
      body: Screens[CurrentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getname().then(
                (value){
                  print(value);
                  print('hii there!');
                  throw('error :)');
                }).catchError((error){
                  print('error is ${error.toString()}');
          });

        },
        child: Icon(
          Icons.add,
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex,
        onTap: (index)
        {
          setState(() {
            CurrentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_circle_outline,
              ),
              label: 'Done'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.archive_outlined,
              ),
              label: 'Archived'
          ),
        ],

      ),

    );
  }
Future <String> getname() async{
    return 'Nahla fathy';

}
}
