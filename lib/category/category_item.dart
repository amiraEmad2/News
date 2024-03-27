import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color:Colors.red ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/ball.png',
            height: MediaQuery.of(context).size.height*0.1,
          ),
          Text('Sport',
            style:Theme.of(context).textTheme.bodyMedium ,)
        ],),
    );
  }
}
