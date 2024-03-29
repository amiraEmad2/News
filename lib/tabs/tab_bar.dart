import 'package:flutter/material.dart';
import 'package:news/modeles/service.dart';
import 'package:news/news/news_cont.dart';
import 'package:news/tabs/tap_item.dart';

class Tabs extends StatefulWidget {
final List<Sources> sources;

const Tabs(this.sources);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int SelectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sources.length,
            child: TabBar(
                isScrollable: true,
                indicatorColor:Colors.transparent  ,
                onTap: (index)=>setState(() =>
                  SelectedIndex= index,),
                tabs: widget.sources
                    .map((Sources)=>TapItem(
                  source:Sources,
                  isSelected:SelectedIndex== widget.sources.indexOf(Sources),
                ),)
                    .toList()
            ),
        ),
        Expanded(child: NewList(sourceId:widget.sources?[SelectedIndex].id??'')),
      ],
    );
  }
}
