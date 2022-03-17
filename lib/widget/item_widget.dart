import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:retroo/model/item.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget(this.item, {Key? key}) : super(key: key);

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
          ),
        ),
      ),
    );
  }
}
