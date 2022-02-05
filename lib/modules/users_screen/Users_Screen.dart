import 'package:course_app/models/users/users.dart';
import 'package:flutter/material.dart';



class UsersScreen extends StatelessWidget {
  //const UsersScreen({Key? key}) : super(key: key);

  List<UserModel> users=[
    UserModel(
      id: 1,
      name: 'nahla',
      phone: '010905587847',
    ),
    UserModel(
      id: 2,
      name: 'menna',
      phone: '010658887847',
    ),
    UserModel(
      id: 3,
      name: 'heba',
      phone: '019864567382',
    ),
    UserModel(
      id: 4,
      name: 'mohra',
      phone: '017756865432',
    ),
    UserModel(
      id: 5,
      name: 'nadeen',
      phone: '01096543567898',
    ),
    UserModel(
      id: 6,
      name: 'noura',
      phone: '0123456776443',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Users'),
      ),
      body: ListView.separated(itemBuilder: (context,index)=>BuildUserItem(users[index]),
          separatorBuilder: (context,index)=>Container(
            width: double.infinity,
            color: Colors.grey[300],
            height: 1.0,

          ),
          itemCount: users.length,),

    );
  }
  Widget BuildUserItem(UserModel users)=>  Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${users.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${users.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${users.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
