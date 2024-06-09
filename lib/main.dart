import 'package:batting_app/firebase_options.dart';
import 'package:batting_app/view/home.dart';
import 'package:batting_app/view/loginpage.dart';
import 'package:batting_app/view/matchfuntion.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



void main()async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp( MyApp());
  
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
        body: Loginpage(),
      )),
    );

    
  }
}
