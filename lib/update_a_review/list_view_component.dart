import 'package:flutter/material.dart';
import 'package:flutter_firebase/Utils/headers.dart';
import 'package:flutter_firebase/services/delete_from_db.dart';
import 'package:flutter_firebase/services/get_from_db.dart';
import 'package:flutter_firebase/update_a_review/review_format.dart';
import 'package:flutter_firebase/update_a_review/data_list.dart';


class ListViewComponent extends StatefulWidget {
  DataList dataList;
  
  ListViewComponent(this.dataList);
  @override
  ListViewComponentState createState() => ListViewComponentState();
}

class ListViewComponentState extends State<ListViewComponent> {
  final key = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    final items = List.from(this.widget.dataList.reviewsList);
    return Scaffold(
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
  }

  Widget buildItem(item, int index, Animation<double> animation) =>
      ReviewFormatWidget(
        item: item,
        animation: animation,
        onClicked: () => {
          removeItem(index),
          this.widget.dataList.reviewsList.remove(item),
          // reomove from db
          deleteReviewFromDB(item.id)
        },
      );

  void removeItem(int index) {
    final items = List.from(this.widget.dataList.reviewsList);
    final item = items.removeAt(index);

    key.currentState.removeItem(
      index,
      (context, animation) => buildItem(item, index, animation),
    );
  }
}