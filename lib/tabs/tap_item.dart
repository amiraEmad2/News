import 'package:flutter/material.dart';
import 'package:news/modeles/service.dart';

class TapItem extends StatelessWidget {
final Sources source;
final bool isSelected;
TapItem({required this.source ,required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:Colors.lightGreen ),
      child: Text(source.name??'',
      style: TextStyle(),
      ),
    );
  }
}
