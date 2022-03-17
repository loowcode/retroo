import 'package:flutter/material.dart';

class PostIt extends StatefulWidget {
  const PostIt(String title, {Key? key}) : super(key: key);

  @override
  State<PostIt> createState() => _PostItState();
}

class _PostItState extends State<PostIt> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.yellow,
        ),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: widget.title
          ),
        ),
      ),
    );
  }
}
