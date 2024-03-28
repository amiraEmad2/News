import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';

class HomeDrawer extends StatelessWidget {


  final void Function(DrawerItem) onItemSElected;
  const HomeDrawer(this.onItemSElected);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppTheme.PrimaryColor,
              ),
              child: Text(
                'News App!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            InkWell(
              onTap: (){
                onItemSElected(DrawerItem.categories);
              },
              child: ListTile(
                title: Text('Category'),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
            ),
            InkWell(
              onTap:(){
                onItemSElected(DrawerItem.Settings);
              },
              child: ListTile(
                title: Text(' Setting'),

                onTap: () {
                  onItemSElected(DrawerItem.Settings);

                },
              ),
            ),
            // Add more ListTiles for additional menu items
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: AppTheme.PrimaryColor,
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Expanded(
            child: Container(
              color: AppTheme.text,
            ),
          ),
        ],
      ),
    );
  }
}
enum DrawerItem{
  categories ,
  Settings,
}