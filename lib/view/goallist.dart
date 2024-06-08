import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlayerCard extends StatelessWidget {
  final String playerName;
  final String playerInfo;
  final String assistPlayer;
  final String playerImage;
  final String goalTime;
  final String teamLogo;
  final String opponentLogo;
  final String score;

  const PlayerCard({
    required this.playerName,
    required this.playerInfo,
    required this.assistPlayer,
    required this.playerImage,
    required this.goalTime,
    required this.teamLogo,
    required this.opponentLogo,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.only(top: 25, left: 30, right: 10),
      child: Container(
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7)),
                color: Color.fromARGB(255, 32, 19, 64),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.footballBall,
                          size: 15,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'GOOLL!!!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(teamLogo)),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          score.split(' ')[0],
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' - ',
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          score.split(' ')[2],
                          style: TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 147, 145, 145),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 30, // Adjusted width to accommodate padding
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black, // Optional: to see the padding area
                            image: DecorationImage(
                                image: AssetImage(opponentLogo),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 10, right: 10, bottom: 10),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          playerName,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          playerInfo,
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(playerImage),
                      radius: 25.0,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Goal Assist :',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    assistPlayer,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}