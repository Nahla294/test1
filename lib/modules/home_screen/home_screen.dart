import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
  return Scaffold(
appBar: AppBar(
  leading: Icon(
    Icons.menu ,
    //color:Colors.pink,
  ),
  title: Text(
    'FirstApp'
  ),
  centerTitle: true,
  actions: [
    IconButton(
        onPressed: onpress,
        icon: Icon(
            Icons.notification_important
        )),
    IconButton(onPressed: (){
    print('Iamm search');
    },
      icon:  Icon(
      Icons.search
  )),
  ],
  elevation: 50.0, // shadow under appbar
  backgroundColor: Colors.black,
),
// body: SafeArea
//   (child:
// Container(
//   color: Colors.deepOrange,
// width: double.infinity,
//   child:   Column(
//     mainAxisSize: MainAxisSize.max,
//     mainAxisAlignment: MainAxisAlignment.end,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Container(
//               //height: 200.0,
//               color: Colors.black,
//               child: Text(
//                 'first text',
//                 style: TextStyle(
//       color: Colors.red,
//                   fontSize: 30.0,
//                   backgroundColor: Colors.black,
//       ),
//               ),
//             ),
      // Container(
      //   color: Colors.blue,
      //   child: Text(
      //       'second text',
      //     style: TextStyle(
      //       color: Colors.green,
      //       fontSize: 30.0,
      //       backgroundColor: Colors.blue,
      //     ),
      //   ),
      // ),
      // Container(
      //   color: Colors.pink,
      //   child: Text(
      //
      //     'third text',
      //     style: TextStyle(
      //       color: Colors.yellow,
      //       fontSize: 30.0,
      //       backgroundColor: Colors.pink,
      //     ),
      //   ),
      // ),
      // Container(
      //   color: Colors.teal,
      //   child: Text(
      //     'Fourth text',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 30.0,
      //       backgroundColor: Colors.teal,
      //     ),
      //   ),
      // ),
//     ],
//   ),
// ),
// // )
//   body: Row(
//     children: [
//       Container(
//         child: Text(
//           'first',
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//             backgroundColor: Colors.red,
//           ),
//         ),
//       ),
//       Container(
//         child: Text(
//           'second',
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//             backgroundColor: Colors.blue,
//           ),
//         ),
//       ),
//       Container(
//         child: Text(
//           'Third',
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//             backgroundColor: Colors.yellow,
//           ),
//         ),
//       ),
//       Container(
//         child: Text(
//           'Fourth',
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//             backgroundColor: Colors.teal,
//           ),
//         ),
//       ),
//     ],
//   ),
// body:
// SingleChildScrollView(
//   scrollDirection: Axis.horizontal,
//   child:   Row(
//     children: [
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//       Text(
//         'First',
//         style: TextStyle(
//           fontSize: 30.0,
//
//         ),
//       ),
//
//     ],
//   ),
// ) ,
body: Column(
  children: [
    Padding(
      padding: const EdgeInsets.all(60.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image(
                image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'
                ),
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
            Container(
             // width: double.infinity,
              width: 200.0,
              color: Colors.black.withOpacity(0.6),
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),

              child: Text(
                'White Flower',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,

                ),
              ),
            ),
          ],

        ),
      ),
    ),
  ],
),

);
  }
 void onpress(){
    print("hii there");
 }
}