import 'package:flutter/material.dart';
import 'package:news/category/category_item.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('pick your category ',style:Theme.of(context).textTheme.bodySmall ,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                    mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (context,index)=>CategoryItem()

            ),
          ),
        ],
      ),
    );
  }
}
