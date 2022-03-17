import 'dart:core';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retroo/widget/post_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> startList = [const PostIt()];
  List<Widget> stopList = [const PostIt()];
  List<Widget> continueList = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DragTarget<PostIt>(
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Column(
                  children: startList,
                );
              },
              onWillAccept: (PostIt? data) {
                return true;
              },
              onAccept: (PostIt data) {
                setState(() {
                  startList.add(data);
                });
              }),
          Column(
            children: [Text("Stop"), ...stopList],
          ),
          Column(
            children: [Text("Continue"), ...continueList],
          )
        ],
      ),
    );
  }
}
