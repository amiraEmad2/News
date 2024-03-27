import 'package:flutter/material.dart';
import 'package:news/category/category_model.dart';

class CategoryItem extends StatelessWidget {
final CategoryModel categories;
final int index;
const CategoryItem ({
  required this.categories,
  required this.index});
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          color:categories.color,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft:Radius.circular (index.isEven?20:0),
        bottomRight :Radius.circular (index.isOdd?20:0

        ),

      ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/${categories.imageName}.png',
            height: MediaQuery.of(context).size.height*0.1,
          ),
          Text(categories.title,
            style:Theme.of(context).textTheme.bodyMedium ,)
        ],),
    );
  }
}
