import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:flutter_firebase/update_a_review/data_list.dart';


class ListViewComponent extends StatefulWidget {
  @override
  ListViewComponentState createState() => ListViewComponentState();
}

class ListViewComponentState extends State<ListViewComponent> {
  final key = GlobalKey<AnimatedListState>();
  final items = List.from(DataList.reviewsList);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: WHITE,
        body: Column(
          children: [
            Expanded(
              child: AnimatedList(
                key: key,
                initialItemCount: items.length,
                itemBuilder: (context, index, animation) =>
                    buildItem(items[index], index, animation),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
            ),
          ],
        ),
      );

  Widget buildItem(item, int index, Animation<double> animation) =>
      ReviewFormatWidget(
        item: item,
        animation: animation,
        onClicked: () => {
          removeItem(index),
          DataList.reviewsList.remove(item)
        },
      );

  void removeItem(int index) {
    final item = items.removeAt(index);

    key.currentState.removeItem(
      index,
      (context, animation) => buildItem(item, index, animation),
    );
  }
}