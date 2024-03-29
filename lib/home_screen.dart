import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/category/category_details.dart';
import 'package:news/category/category_grid.dart';
import 'package:news/category/category_model.dart';
import 'package:news/seting/setings.dart';

import 'drowar/home_drowar.dart';
class HomeScreen extends StatefulWidget {
static const String routeName ='/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        drawer: HomeDrawer(onDrawerItemSElected),
        appBar: AppBar(
          backgroundColor: AppTheme.PrimaryColor,
        ),

        body:
         SelectedCategory!=null? CategoryDetails(SelectedCategory!.id)

        :SelectDrawerItem==DrawerItem.Settings
            ? SetingsTap()
            : CategoryScreen (onCaregorySelected: onCaregorySelected
        ),
      ),
    );
  }

  DrawerItem SelectDrawerItem=DrawerItem.categories ;
  CategoryModel? SelectedCategory;

  void onDrawerItemSElected (DrawerItem SelectItem){
    SelectDrawerItem = SelectItem;


    SelectedCategory !=null;
    setState(() {

    });
    Navigator.of(context).pop();
  }
  void  onCaregorySelected(CategoryModel Category){
SelectedCategory = Category;

   setState(() {
});
  }
}
