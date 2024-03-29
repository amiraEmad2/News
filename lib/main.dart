import 'package:flutter/material.dart';
import 'package:news/api/api_service.dart';
import 'package:news/home_screen.dart';

void main() {
  APIService.getSources('  ');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
      },
    );


  }
}