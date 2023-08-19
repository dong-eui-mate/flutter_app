import 'package:flutter/material.dart';

import '../model/AssignmentModel.dart';

class AssignmentItem extends StatelessWidget {
  const AssignmentItem({super.key, required this.item, this.padVal = 0, required this.idx});

  final AssignmentModel item;
  final double padVal;
  final int idx;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 8, 8, padVal),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("~${item.date}")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item.subject, style: TextStyle(fontSize: 16),),
                  Text("D-${idx}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),)
                ],
              )
            ],
          ),
        ),
      ),
    );
    /*
    return Container(
      margin: EdgeInsets.fromLTRB(18, 18, 18, padVal),
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Colors.black26,
          width: 2
        )
      ),
      child: Text(
        value,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),
      ),
    );
    */
  }
}