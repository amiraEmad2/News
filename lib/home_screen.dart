import 'package:flutter/material.dart';
import 'package:news/category/category_grid.dart';

import 'drowar/home_drowar.dart';
class HomeScreen extends StatelessWidget {
static const String routeName ='/';
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/NewsTest.png'
        ),
          fit: BoxFit.cover,
      ),
      ),
      child: Scaffold(
        drawer: HomeDrowar(),
        appBar: AppBar(
          title: Text('News App',),
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20),
          ),

        ),
        body: CategoryScreen(

        ),
      ),
    );
  }
}
