import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';

class HomeDrowar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppTheme.PrimaryColor,
          height: MediaQuery.of(context).size.height*0.2,
        ),
        Expanded(
          child: Container(
            color: AppTheme.text,
          ),
        )
      ],
    );
  }
}
