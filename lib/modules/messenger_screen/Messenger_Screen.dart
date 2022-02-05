import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  //const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title:Row(
          children: [
            CircleAvatar(
              radius: 23.0,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
                'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: ()
          {
          },
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 18.0,
                  color: Colors.white,

                ),
              ),),
          IconButton(onPressed: ()
          {
          },
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 18.0,
                color: Colors.white,

              ),
            ),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                        Icons.search
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Search'
                    ),
                  ],
                ),
              ),
              SizedBox(
               height: 15.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index)=>StoryItem(),
                    separatorBuilder: (context,index)=>SizedBox(
                      width: 15.0,
                    ),
                    itemCount: 17,
                ),
              ),
              ListView.separated(itemBuilder: (context,index)=>BuildChatItem(),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context,index)=>SizedBox(
                    height: 10,
                  ),
                  itemCount: 20),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 50.0,
              //         child: Column(
              //           children: [
              //           Stack(
              //             alignment: Alignment.bottomRight,
              //             children: [
              //               CircleAvatar(
              //                 radius: 25.0,
              //                 backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsetsDirectional.only(
              //                   bottom: 3.0,
              //                   end: 3.0,
              //                 ),
              //                 child: CircleAvatar(
              //                  radius: 6.0,
              //                  backgroundColor: Colors.green,
              //                 ),
              //               ),
              //             ],
              //           ) ,
              //             Text(
              //                 'Nahla Fathy Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Container(
              //         width: 50.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ) ,
              //             Text(
              //               'Nahla Fathy Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Container(
              //         width: 50.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ) ,
              //             Text(
              //               'Nahla Fathy Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Container(
              //         width: 50.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ) ,
              //             Text(
              //               'Nahla Fathy Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Container(
              //         width: 50.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ) ,
              //             Text(
              //               'Nahla Fathy Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Container(
              //         width: 50.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ) ,
              //             Text(
              //               'Nahla Fathy Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //       SizedBox(
              //         width: 10.0,
              //       ),
              //       Container(
              //         width: 50.0,
              //         child: Column(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //               ],
              //             ) ,
              //             Text(
              //               'Nahla Fathy Mahmoud',
              //               maxLines: 2,
              //               overflow: TextOverflow.ellipsis,
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: [
              //         SizedBox(
              //           height: 20.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //
              //               ],
              //             ),
              //             SizedBox(
              //               width: 10.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                       'Nahla Fathy ghjklkjhgfghjkjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhllfghjkl',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 18.0,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 3.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                             'Hello there! how are you?.jhudhihduicedh',
              //                           maxLines: 2,
              //                             overflow: TextOverflow.ellipsis,
              //                         ),
              //
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 5.0,
              //                           height: 5.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                           '2:00 pm'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 15.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //
              //               ],
              //             ),
              //             SizedBox(
              //               width: 10.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Nahla Fathy ghjklkjhgfghjkjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhllfghjkl',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 18.0,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 3.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'Hello there! how are you?.jhudhihduicedh',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 5.0,
              //                           height: 5.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                           '2:00 pm'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 15.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //
              //               ],
              //             ),
              //             SizedBox(
              //               width: 10.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Nahla Fathy ghjklkjhgfghjkjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhllfghjkl',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 18.0,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 3.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'Hello there! how are you?.jhudhihduicedh',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 5.0,
              //                           height: 5.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                           '2:00 pm'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 15.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //
              //               ],
              //             ),
              //             SizedBox(
              //               width: 10.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Nahla Fathy ghjklkjhgfghjkjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhllfghjkl',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 18.0,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 3.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'Hello there! how are you?.jhudhihduicedh',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 5.0,
              //                           height: 5.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                           '2:00 pm'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 15.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //
              //               ],
              //             ),
              //             SizedBox(
              //               width: 10.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Nahla Fathy ghjklkjhgfghjkjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhllfghjkl',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 18.0,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 3.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'Hello there! how are you?.jhudhihduicedh',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 5.0,
              //                           height: 5.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                           '2:00 pm'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 15.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //
              //               ],
              //             ),
              //             SizedBox(
              //               width: 10.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Nahla Fathy ghjklkjhgfghjkjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhllfghjkl',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 18.0,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 3.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'Hello there! how are you?.jhudhihduicedh',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 5.0,
              //                           height: 5.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                           '2:00 pm'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 15.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //
              //               ],
              //             ),
              //             SizedBox(
              //               width: 10.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Nahla Fathy ghjklkjhgfghjkjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhllfghjkl',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 18.0,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 3.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'Hello there! how are you?.jhudhihduicedh',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 5.0,
              //                           height: 5.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                           '2:00 pm'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           height: 15.0,
              //         ),
              //         Row(
              //           children: [
              //             Stack(
              //               alignment: Alignment.bottomRight,
              //               children: [
              //                 CircleAvatar(
              //                   radius: 25.0,
              //                   backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsetsDirectional.only(
              //                     bottom: 3.0,
              //                     end: 3.0,
              //                   ),
              //                   child: CircleAvatar(
              //                     radius: 6.0,
              //                     backgroundColor: Colors.green,
              //                   ),
              //                 ),
              //
              //               ],
              //             ),
              //             SizedBox(
              //               width: 10.0,
              //             ),
              //             Expanded(
              //               child: Column(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: [
              //                   Text(
              //                     'Nahla Fathy ghjklkjhgfghjkjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhllfghjkl',
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                     style: TextStyle(
              //                       fontWeight: FontWeight.bold,
              //                       fontSize: 18.0,
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     height: 3.0,
              //                   ),
              //                   Row(
              //                     children: [
              //                       Expanded(
              //                         child: Text(
              //                           'Hello there! how are you?.jhudhihduicedh',
              //                           maxLines: 2,
              //                           overflow: TextOverflow.ellipsis,
              //                         ),
              //
              //                       ),
              //                       Padding(
              //                         padding: const EdgeInsets.symmetric(
              //                           horizontal: 10.0,
              //                         ),
              //                         child: Container(
              //                           width: 5.0,
              //                           height: 5.0,
              //                           decoration: BoxDecoration(
              //                             color: Colors.blue,
              //                             shape: BoxShape.circle,
              //                           ),
              //                         ),
              //                       ),
              //                       Text(
              //                           '2:00 pm'),
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

            ],
          ),
        ),
      ),
    );
  }

Widget BuildChatItem() => Row(
  children: [
    Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            bottom: 3.0,
            end: 3.0,
          ),
          child: CircleAvatar(
            radius: 6.0,
            backgroundColor: Colors.green,
          ),
        ),

      ],
    ),
    SizedBox(
      width: 10.0,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nahla Fathy ghjklkjhgfghjkjjjjjjjjjjjjjjjjjhhhhhhhhhhhhhhhhhhhllfghjkl',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Hello there! how are you?.jhudhihduicedh',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),

              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Container(
                  width: 5.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Text(
                  '2:00 pm'),
            ],
          ),
        ],
      ),
    ),
  ],
);
  Widget StoryItem () =>  Container(
    width: 50.0,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 6.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ) ,
        Text(
          'Nahla Fathy Mahmoud',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
