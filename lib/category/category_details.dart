import 'package:flutter/material.dart';
import 'package:news/api_service.dart';
import 'package:news/modeles/service.dart';
import 'package:news/tabs/tap_item.dart';

class CategoryDetails extends StatelessWidget {
const CategoryDetails(this.categoryId);
final String categoryId;
  @override
  Widget build(BuildContext context) {
    final controller

    return FutureBuilder( future:APIService.getSources(categoryId) ,
      builder : (context,snapshot) {
    if (snapshot.connectionState== ConnectionState.waiting)
    return const Center(child: CircularProgressIndicator(),);
    else if(snapshot.hasError){
    return Container(
      child: Text('Error '),
    );}
    else if (snapshot.data?.status !='ok'){
    return Container(child: Text('Something went wrong! '),);
    }
final Sources = snapshot.data?.Sources?? [];
    return
      DefaultTabController(
          length: Sources.length,
          child: TabBar(
              isScrollable: true,
              tabs: Sources
                  .map((Sources)=>TapItem(
                 source:Sources,
                   isSelected: true,
    ),)
                   .toList()
          ));
    //ListView.builder(itemBuilder:(context,index)=>Text(snapshot.data?.sources?[index].name??'',
    //style: TextStyle(color: Colors.black),),
    // itemCount: snapshot.data?.sources?.lengh,
    // );
    // },
    },
    );

  }
}
