import 'package:flutter/material.dart';
import 'package:news/api/api_service.dart';
import 'package:news/modeles/service.dart';
import 'package:news/modeles/service.dart';
import 'package:news/tabs/tab_bar.dart';
import 'package:news/tabs/tap_item.dart';
import 'package:news/widget/error.dart';
import 'package:news/widget/loading.dart';

import '../modeles/service.dart';
import '../modeles/service.dart';

class CategoryDetails extends StatelessWidget {
const CategoryDetails(this.categoryId);
final String categoryId;
  @override
  Widget build(BuildContext context) {
   // final controller =TabController(length :length,vsync: vs );

    return FutureBuilder( future:APIService.getSources(categoryId) ,
      builder : (context,snapshot) {
    if (snapshot.connectionState== ConnectionState.waiting)
    return  Loading();
    else if(snapshot.hasError){
    return ErrorIndicator();
    }
    else if (snapshot.data?.status !='ok'){
    return ErrorIndicator();}
final sourcesResponse = snapshot.data as SourcesResponse;
    final Sources = sourcesResponse.sources ?? [];
    return Tabs(Sources);

    //ListView.builder(itemBuilder:(context,index)=>Text(snapshot.data?.sources?[index].name??'',
    //style: TextStyle(color: Colors.black),),
    // itemCount: snapshot.data?.sources?.lengh,
    // );
    },

    );

  }
}
