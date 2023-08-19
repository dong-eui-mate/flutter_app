import 'package:deu_mate_app/model/AssignmentModel.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:deu_mate_app/firebase_options.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../components/AssignmentItem.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  List<AssignmentModel> _assignList = [
    AssignmentModel(title: '과제 1', subject: '과제 과목 1', date: '08.20 23:00'),
    AssignmentModel(title: '과제 2', subject: '과제 과목 2', date: '08.21 23:00'),
    AssignmentModel(title: '과제 3', subject: '과제 과목 3', date: '08.22 23:00'),
    AssignmentModel(title: '과제 4', subject: '과제 과목 4', date: '08.23 23:00'),
    AssignmentModel(title: '과제 5', subject: '과제 과목 5', date: '08.24 23:00'),
    AssignmentModel(title: '과제 6', subject: '과제 과목 6', date: '08.25 23:00'),
    AssignmentModel(title: '과제 7', subject: '과제 과목 7', date: '08.26 23:00'),
  ];

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {

        });
      },
      child: ListView.builder(
        itemCount: _assignList.length,
        itemBuilder: (context, index) {
          return AssignmentItem(item: _assignList[index], padVal: index == _assignList.length - 1 ? 16 : 0, idx: index + 1,);
        },
      ),
    );
  }
}