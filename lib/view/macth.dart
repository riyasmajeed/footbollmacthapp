import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class MatchContainer extends StatelessWidget {
  final String team1Name;
  final String team1ImagePath; // Path to team 1 image in Firebase Storage
  final String matchTime;
  final String venue;
  final String team2Name;
  final String team2ImagePath; // Path to team 2 image in Firebase Storage

  MatchContainer({
    required this.team1Name,
    required this.team1ImagePath,
    required this.matchTime,
    required this.venue,
    required this.team2Name,
    required this.team2ImagePath, required team2Image,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getImageURLs(), // Fetch image URLs asynchronously
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Show loading indicator while fetching images
        }
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(snapshot.data![0]), // Team 1 image
                Text(
                  team1Name,
                  style: TextStyle(
                      fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
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
                Text(
                  team2Name,
                  style: TextStyle(
                      fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Image.network(snapshot.data![1]), // Team 2 image
              ],
            ),
          ),
        );
      },
    );
  }

  Future<List<String>> _getImageURLs() async {
    final List<String> imageURLs = [];
    final storage = FirebaseStorage.instance;
    try {
      // Fetch image URLs from Firebase Storage
      final team1ImageURL = await storage.ref().child("redlogo.png");
      final team2ImageURL = await storage.ref().child("panchuca.png");
     final url = await team1ImageURL.getDownloadURL();
    final url1 = await team2ImageURL.getDownloadURL();
 imageURLs.add(url);
    imageURLs.add(url1);
     
    }
    catch (e) {
    print('Error fetching image URLs: $e');
  }
    return imageURLs;
  }
}
