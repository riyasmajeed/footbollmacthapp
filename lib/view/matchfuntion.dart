import 'package:batting_app/view/icons.dart';
import 'package:batting_app/view/macth.dart';
import 'package:batting_app/view/playerlist.dart';
import 'package:batting_app/view/scorebord.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class matchfuntion extends StatefulWidget {
  const matchfuntion({super.key});

  @override
  State<matchfuntion> createState() => _matchfuntionState();
}

class _matchfuntionState extends State<matchfuntion> {
   int _selectedIndex = 0;
     void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   List<Map<String, dynamic>> matchData = [
    {
      'team1Name': 'Arsenal',
      'team1Image': 'redlogo.png',
      'matchTime': '17:00',
      'venue': 'Emirates',
      'team2Name': 'Chelsea',
      'team2Image': 'flogo.png',
    },
    {
      'team1Name': 'Chelsea',
      'team1Image': 'brazil.png',
      'matchTime': '19:30',
      'venue': 'Old Trafford',
      'team2Name': 'Arsenal',
      'team2Image': 'brazil.png',
    },
     {
      'team1Name': 'Chelsea',
      'team1Image': 'aregen.png',
      'matchTime': '19:30',
      'venue': 'Old Trafford',
      'team2Name': 'Arsenal',
      'team2Image': 'redlogo.png',
    },
     {
      'team1Name': 'Chelsea',
      'team1Image': 'redlogo.png',
      'matchTime': '19:30',
      'venue': 'Old Trafford',
      'team2Name': 'Arsenal',
      'team2Image': 'manchester.png',
    },
     {
      'team1Name': 'Chelsea',
      'team1Image': 'panchuca.png',
      'matchTime': '19:30',
      'venue': 'Old Trafford',
      'team2Name': 'Arsenal',
      'team2Image': 'redlogo.png',
    },
  
  ];
   List<IconData> icons = [
    FontAwesomeIcons.footballBall,
    FontAwesomeIcons.basketballBall,
    FontAwesomeIcons.hockeyPuck,
    FontAwesomeIcons.volleyball,
    FontAwesomeIcons.tableTennisPaddleBall,
  
  ];

  late String imageUrl;
  late String imageUrl1;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Padding(
  padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
  child: SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('EALLASHOT',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
         
         Container(
            height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
             color: Colors.transparent,
                border: Border.all(color: const Color.fromARGB(118, 0, 0, 0))
    
              ),
              child: Center(
                child: Icon(Icons.search,size: 23,color: Colors.black,),
              ),
         )
         
          ],
        ),
    
        SizedBox(height: 10,),
    
      Container(
           height: 230,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                
                  Colors.red,
                    Color.fromARGB(122, 21, 64, 99),
                    
                     
                ],
              )
          ),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 15,
                child: Row(
                children: [
                  Icon(Icons.cruelty_free,size: 20,color: Colors.white,),
                  SizedBox(width: 5,),
                  Text('Premier League' ,style: TextStyle(
                    fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold
                  ),)
                ],
              )),
              Positioned(
                 left: 17,
                    top: 40,
                child: Text('Week 10',style: TextStyle(
                color: Colors.grey,fontSize: 15
              ),)),
              Positioned(
                   left: 17,
                    top: 65,
                child:Container(
                height: 100,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/manchester.png'))
                ),
              ) ),
              Positioned(
                  left: 17,
                bottom: 30,
    
                child: Text('Man united',style: TextStyle(
                fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold
    
              ),)),
              Positioned(
                top: 60,
                left: 130,
                child: Container(
                  width: 130,
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    Text('4',style: TextStyle(
                      color: Colors.white,fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(53, 255, 255, 255)
                      ),
                      child: Center(
                        child: Text('VS',style:TextStyle(
                         color: Colors.white,fontSize: 15,
                       fontWeight: FontWeight.bold
                        ) ,),
                      ),
                    ),
                     Text('2',style: TextStyle(
                      color: Colors.white,fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                              ),
                )),
    
                Positioned(
                   top: 135,
                left: 159,
                  child: Container(
                  height: 25,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(39, 76, 175, 79),
                    border: Border.all(color: Colors.green)
                  ),
                   child: Center(
                     child: Text('45+4\'',
                     style: TextStyle(
                      color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold
                     ),
                     
                     ),
                   ),
                )),
                Positioned(
                     bottom: 30,
                     left: 150,
    
                  child: 
                
                Text('old Trafford',style: TextStyle(
    color: Colors.grey,fontSize: 17
                ),)),
                 Positioned(
    top: 75,
    right: 17,
    child: Container(
      height: 85,
                width: 80, // Adjusted width to accommodate padding
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black, // Optional: to see the padding area
    
    image: DecorationImage(
              image: AssetImage('assets/logo.png'), 
              fit: BoxFit.cover )
              ),
      // child: Padding(
      //   padding: const EdgeInsets.all(5), // Adding padding around the image
      //   child: Container(
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       image: DecorationImage(
      //         image: AssetImage('assets/logo.png'),
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      // ),
    ),
    ),
    
    Positioned(
                  right: 21,
                bottom: 30,
    
                child: Text('Man City',style: TextStyle(
                fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold
    
              ),)),
    
    Positioned(
      top: 5,
    right: 2,
    
    child: Row(
    children: [
    
    Text('LIVE',style: TextStyle(
      fontSize: 14,color: Colors.white,
      
    ),),
     Radio(value: 1, groupValue: 1, onChanged: (value) {},
      activeColor: Colors.red,), 
    ],
    
    ))
            ],
          ),
        ),
    
          SizedBox(height:20,),
    
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text('Today match',style: TextStyle(
    color: Colors.black,fontSize: 21,fontWeight: FontWeight.bold
    ),),
    Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,)
    
    ],
    ),
    SizedBox(height:20,),
     SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // child: Row(
                //   children: [
                //     // CircularIconContainer(icon: FontAwesomeIcons.footballBall),
                //     // CircularIconContainer(icon: FontAwesomeIcons.basketballBall),
                //     // CircularIconContainer(icon: FontAwesomeIcons.hockeyPuck),
                //     // CircularIconContainer(icon: FontAwesomeIcons.baseballBall),
                //     // CircularIconContainer(icon: FontAwesomeIcons.volleyballBall),
                //     // CircularIconContainer(icon: FontAwesomeIcons.tableTennis),
                //        for (int i = 0; i < matchData.length; i++)
                //       CircularIconContainer(
                //         icon: FontAwesomeIcons.footballBall,
                //         isSelected: i == _selectedIndex,
                //         onTap: () => _onItemTapped(i),
                //       ),
                //   ],
                // ),
                  child: Row(
                  children: List.generate(icons.length, (index) {
                    return CircularIconContainer(
                      icon: icons[index],
                      isSelected: index == _selectedIndex,
                      onTap: () => _onItemTapped(index),
                    );
                  }),
                ),
              ),
               SizedBox(height:20,),
              //    MatchContainer(
              //   team1Name: 'Arsenal',
              //   team1Image: 'assets/manchester.png',
              //   matchTime: '17:00',
              //   venue: 'Emirates',
              //   team2Name: 'Chelsea',
              //   team2Image: 'assets/manchester.png',
              // ),
              // SizedBox(height: 10),
              // MatchContainer(
              //   team1Name: 'Arsenal',
              //   team1Image: 'assets/manchester.png',
              //   matchTime: '19:30',
              //   venue: 'Emirates',
              //   team2Name: 'Chelsea',
              //   team2Image:'assets/manchester.png',
              // ),
              //   SizedBox(height: 10),
              //    MatchContainer(
              //   team1Name: 'Arsenal',
              //   team1Image: 'assets/manchester.png',
              //   matchTime: '19:30',
              //   venue: 'Emirates',
              //   team2Name: 'Everton',
              //   team2Image:'assets/manchester.png',
              // )
              // ,
                 MatchContainer(
                team1Name: matchData[_selectedIndex]['team1Name'],
                team1ImagePath: matchData[_selectedIndex]['team1Image'],
                matchTime: matchData[_selectedIndex]['matchTime'],
                venue: matchData[_selectedIndex]['venue'],
                team2Name: matchData[_selectedIndex]['team2Name'],
                team2Image: matchData[_selectedIndex]['team2Image'], 
                team2ImagePath:matchData[_selectedIndex]['team2Image'], 
              ),
              SizedBox(height: 10,),
                MatchContainer(
                team1Name: matchData[_selectedIndex]['team1Name'],
                team1ImagePath: matchData[_selectedIndex]['team1Image'],
                matchTime: matchData[_selectedIndex]['matchTime'],
                venue: matchData[_selectedIndex]['venue'],
                team2Name: matchData[_selectedIndex]['team2Name'],
                team2Image: matchData[_selectedIndex]['team2Image'],
                team2ImagePath:matchData[_selectedIndex]['team2Image'] ,
              ),
      ],
    ),
  ),
),
 floatingActionButton: FloatingActionButton(
        onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PlayerList()));
          // Add your onPressed code here!
        },
        child: Icon(Icons.tv,color:  Color.fromARGB(255, 255, 255, 255),),
         shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(26.0), // Adjust the value to make it more or less circular

  ),
 backgroundColor: const Color.fromARGB(255, 32, 19, 64),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,



     bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
       
  currentIndex: _selectedIndex,
  onTap: _onItemTapped,
   selectedItemColor: Color.fromARGB(255, 32, 19, 64), // Custom color for selected item
  unselectedItemColor: Colors.grey,
 showUnselectedLabels: true,

  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.newspaper),
      label: 'News',
    ),
  
    BottomNavigationBarItem(
      icon: Icon(Icons.store),
      label: 'Store',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'Favorites',
    ),
  ],
),

    );
  }
}

// class CircularIconContainer extends StatelessWidget {
//   final IconData icon;

//   CircularIconContainer({required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Container(
//         height: 70,
//         width: 70,
//         decoration: BoxDecoration(
//           color: Color.fromARGB(138, 219, 214, 214),
//           shape: BoxShape.circle,
         
//         ),
//         child: Icon(icon, color: Color.fromARGB(189, 114, 112, 112),size: 35,),
//       ),
//     );
//   }
// }

class CircularIconContainer extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  CircularIconContainer({required this.icon, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: isSelected
                ? Color.fromARGB(255, 32, 19, 64) // Selected color
                : Color.fromARGB(138, 219, 214, 214), // Default color
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: isSelected
                ? Color.fromARGB(255, 255, 255, 255) // Selected icon color
                : Color.fromARGB(189, 114, 112, 112), // Default icon color
            size: 35,
          ),
        ),
      ),
    );
  }
}


