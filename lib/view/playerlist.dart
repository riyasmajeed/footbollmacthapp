// ignore_for_file: unnecessary_import

import 'package:batting_app/view/goallist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlayerList extends StatefulWidget {
  const PlayerList({super.key});

  @override
  State<PlayerList> createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromARGB(255, 209, 208, 208))),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/manchester.png')),
                            ),
                          ),
                          Text(
                            '4',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 25,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color.fromARGB(39, 76, 175, 79),
                                border: Border.all(color: Colors.green)),
                            child: Center(
                              child: Text(
                                '45+4\'',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Text(
                            '2',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 60,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage('assets/logo.png'),
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
//                   Container(
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 30, right: 10, bottom: 10),
//                       child: Stack(
//                         children: [
//                           Container(
//                             height: 600, // Adjust the height according to your needs
//                             child: Row(
//                               children: [
//                                 Container(
//                                   alignment: Alignment.centerLeft,
//                                   child: RotatedBox(
//                                     quarterTurns: 1,
//                                     child: DottedLine(
//                                       dashLength: 8,
//                                       lineThickness: 2,
//                                       dashGapLength: 8,
//                                       dashColor: Colors.grey,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Positioned(
//                             child: Column(
//                               children: [
//                                 PlayerCard(
//                                   playerName: 'Frederico Rodrigues Santos',
//                                   playerInfo: 'CMF #17  •  Manchester United',
//                                   assistPlayer: 'Harry Maguire',
//                                   playerImage: 'assets/cr7.png',
//                                   goalTime: '43\'',
//                                   teamLogo: 'assets/manchester.png',
//                                   score: '3 - 2',
//                                     opponentLogo: 'assets/logo.png',
//                                 ),
//                                 // Add more PlayerCard widgets here if needed
//                                 PlayerCard(
//                                   playerName: 'Frederico Rodrigues Santos',
//                                   playerInfo: 'CMF #17  •  Manchester United',
//                                   assistPlayer:  'Harry Maguire',
//                                   playerImage:  'assets/cr7.png',
//                                   goalTime: '56\'',
//                                   teamLogo: 'assets/manchester.png',
//                                   score: '1 - 0',
//                                     opponentLogo: 'assets/logo.png',
//                                 ),

// Padding(
//     padding: const EdgeInsets.only(top: 25, left: 30, right: 10),
//   child: Container(
//     height: 125,
//      decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               spreadRadius: 1,
//               offset: Offset(0, 1), // changes position of shadow
//             ),
//           ],
//           borderRadius: BorderRadius.circular(7),
//         ),

//         child: Column(
//           children: [
//             Container(
//                  width: double.infinity,
//               height: 50,
//               decoration: BoxDecoration(
//                 border: Border(bottom:BorderSide(color: Colors.grey))
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Icon(Icons.style_rounded,color: Colors.yellow,size: 17,),
//                     SizedBox(width: 10,),
//                     Text('Yellow Card',style: TextStyle(
//                       fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold
//                     ),)
                
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, top: 10, right: 10, bottom: 10),
//               child: Container(
//                 height: 50,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
      
//                         ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                         'Frederico Rodrigues Santos',
//                           style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                         'CMF #17  •  Manchester United',
//                           style: TextStyle(
//                               fontSize: 12, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                     CircleAvatar(
//                       backgroundImage: AssetImage('assets/cr7.png'),
//                       radius: 25.0,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//   ),
// ),

// Padding(
//     padding: const EdgeInsets.only(top: 25, left: 30, right: 10),
//   child: Container(
//     height: 125,
//      decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               spreadRadius: 1,
//               offset: Offset(0, 1), // changes position of shadow
//             ),
//           ],
//           borderRadius: BorderRadius.circular(7),
//         ),

//         child: Column(
//           children: [
//             Container(
//                  width: double.infinity,
//               height: 50,
//               decoration: BoxDecoration(
//                 border: Border(bottom:BorderSide(color: Colors.grey))
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Icon(Icons.style_rounded,color: Colors.yellow,size: 17,),
//                     SizedBox(width: 10,),
//                     Text('Yellow Card',style: TextStyle(
//                       fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold
//                     ),)
                
//                   ],
//                 ),
//               ),
//             ),
//              Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, top: 10, right: 10, bottom: 10),
//               child: Container(
//                 height: 50,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
      
//                         ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                         'Frederico Rodrigues Santos',
//                           style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                         'CMF #17  •  Manchester United',
//                           style: TextStyle(
//                               fontSize: 12, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                     CircleAvatar(
//                       backgroundImage: AssetImage('assets/cr7.png'),
//                       radius: 25.0,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//   ),
// ),
//                               ],
//                             ),
//                           ),
//                           Positioned(
//                             left: 25,
//                             top: 45,
//                             child: Container(
//                               height: 10,
//                               width: 10,
//                               decoration: BoxDecoration(
//                                   color: Colors.red,
//                                   borderRadius: BorderRadius.circular(5)),
//                             ),
//                           ),
//                            Positioned(
//                             left: 25,
//                             top: 240,
//                             child: Container(
//                               height: 10,
//                               width: 10,
//                               decoration: BoxDecoration(
//                                   color: Colors.red,
//                                   borderRadius: BorderRadius.circular(5)),
//                             ),
//                           ),
//                             Positioned(
//                             left: 25,
//                             top: 435,
//                             child: Container(
//                               height: 10,
//                               width: 10,
//                               decoration: BoxDecoration(
//                                   color: Colors.red,
//                                   borderRadius: BorderRadius.circular(5)),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
                ],
              ),
              Positioned(
                top: 105,
                left: 15,
                child: Container(
                  height: 40,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    '43\'',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
 Positioned(
                top: 300,
                left: 15,
                child: Container(
                  height: 40,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    '42\'',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
 Positioned(
                top: 495,
                left: 15,
                child: Container(
                  height: 40,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    '34\'',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}