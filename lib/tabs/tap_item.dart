import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/modeles/service.dart';

class TapItem extends StatelessWidget {
final Sources source;
final bool isSelected;
TapItem({required this.source ,required this.isSelected});
  @override
  Widget build(BuildContext context) {
    final PrimaryColor = Theme.of(context).primaryColor;
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(color:isSelected? Colors.lightGreen:Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      ),
      
      child: Text(source.name??'',
      style: TextStyle(color:isSelected?AppTheme.text:Colors.black87),
      ),
    );
  }
}
