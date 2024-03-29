 import 'package:flutter/material.dart';
import 'package:news/app_theme.dart';
import 'package:news/widget/loading.dart';
 import 'package:timeago/timeago.dart' as timeago;

import '../api/news.dart';
 import 'package:cached_network_image/cached_network_image.dart';

class NewsItem extends StatelessWidget {
 const NewsItem ( this.news);
 final News news;
   @override
   Widget build(BuildContext context) {
     final titleSmall =Theme.of(context).textTheme.titleSmall;

     return Container(
       padding: EdgeInsets.all(16),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(4),
             child: CachedNetworkImage(
              imageUrl: news.urlToImage??'',
             placeholder: (context, url) => Loading(),
                  errorWidget: (context, url, error) => Center(
                    child: Icon(Icons.error,
                      size:40 ,
                    ),
                  ),
                      height :MediaQuery.of(context).size.height*0.25,
             width: double.infinity,
               fit : BoxFit.cover,
             ),
           ),
           const SizedBox(height: 4,),

           Text(
             news.source?.name??'',
             style:titleSmall?.copyWith(fontWeight: FontWeight.w400,
             fontSize:10,
             color: AppTheme.mavyColor2) ,
           ),
           const SizedBox(height: 4,),

           Text(
             news.title??' ',
             style:titleSmall,
           ),
           const SizedBox(height: 4,),
           Align(
             alignment: AlignmentDirectional.centerEnd,
             child: Text(
               timeago.format(news.publishedAt),
               style: titleSmall
             ),
           ),
         ],
       ),

     );
   }
 }
