import 'package:flutter/material.dart';

class MatchContainer extends StatelessWidget {
  final String team1Name;
  final String team1Image;
  final String matchTime;
  final String venue;
  final String team2Name;
  final String team2Image;

  MatchContainer({
    required this.team1Name,
    required this.team1Image,
    required this.matchTime,
    required this.venue,
    required this.team2Name,
    required this.team2Image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color.fromARGB(154, 120, 119, 119)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              child: Image.asset(team1Image),
            ),
            SizedBox(width: 10),
            Text(
              team1Name,
              style: TextStyle(
                  fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
            ),
             SizedBox(width: 25,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  matchTime,
                  style: TextStyle(
                      fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  venue,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            SizedBox(width: 25,),
            Text(
              team2Name,
              style: TextStyle(
                  fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            Container(
              height: 50,
              width: 50,
              child: Image.asset(team2Image),
            ),
          ],
        ),
      ),
    );
  }
}