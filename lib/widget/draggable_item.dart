import 'package:flutter/material.dart';
import 'package:retroo/model/item.dart';
import 'package:retroo/widget/post_it.dart';

import 'item_widget.dart';

class DraggableItem extends StatefulWidget {
  final String id;

  const DraggableItem(this.id, {Key? key}) : super(key: key);

  @override
  State<DraggableItem> createState() => _DraggableItemState();
}

class _DraggableItemState extends State<DraggableItem> {
  late String listId;
  late String title;
  int position;



  @override
  Widget build(BuildContext context) {
    return Draggable<Item>(
      // Data is the value this Draggable stores.
      data: Item(id: widget.id, listId: listId, title: title, position: position),
      feedback: Container(
        color: Colors.deepOrange,
        height: 100,
        width: 100,
        child: const Icon(Icons.directions_run),
      ),
      childWhenDragging: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.pinkAccent,
        child: const Center(
          child: Text('Child When Dragging'),
        ),
      ),
      child: const PostIt(title),
    );
  }
}
