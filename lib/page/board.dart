// import 'package:boardview/board_list.dart';
// import 'package:boardview/boardview_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:reorderables/reorderables.dart';
// import 'package:boardview/boardview.dart';
// import 'package:retroo/model/item.dart';
//
// class Board extends StatefulWidget {
//   late List<Widget> _tiles;
//   Color color = Colors.grey;
//   int depth = 10;
//
//   Board({Key? key}) : super(key: key);
//
//   @override
//   _KanbanState createState() => _KanbanState();
// }
//
// class _KanbanState extends State<Board> {
//
//   List<Item> _listsItem = [
//     Item(title: "List title 1"),
//     Item(title: "List title 2"),
//     Item(title: "List title 3")
//   ];
//
//
//   //Can be used to animate to different sections of the BoardView
//   BoardViewController boardViewController = BoardViewController();
//    BoardList _lists = const BoardList();
//
//   @override
//   Widget build(BuildContext context) {
//     BoardList(
//       onStartDragList: (int? listIndex) {
//
//       },
//       onTapList: (int? listIndex) async {
//
//       },
//       onDropList: (int? listIndex, int? oldListIndex) {
//         //Update our local list data
//         var list = _listData[oldListIndex!];
//         _listData.removeAt(oldListIndex!);
//         _listData.insert(listIndex!, list);
//       },
//       headerBackgroundColor: Color.fromARGB(255, 235, 236, 240),
//       backgroundColor: Color.fromARGB(255, 235, 236, 240),
//       header: [
//         Expanded(
//             child: Padding(
//                 padding: EdgeInsets.all(5),
//                 child: Text(
//                   list.title!,
//                   style: TextStyle(fontSize: 20),
//                 ))),
//       ],
//       items: items,
//     );
//   }
// }
