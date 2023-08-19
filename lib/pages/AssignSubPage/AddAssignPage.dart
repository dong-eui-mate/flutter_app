import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/material.dart';

class AddAssignPage extends StatefulWidget {
  const AddAssignPage({super.key});

  @override
  State<AddAssignPage> createState() => _AddAssignPageState();
}

class _AddAssignPageState extends State<AddAssignPage> {

  DateTime _date = DateTime.now();
  late Time _time = Time(hour: _date.hour, minute: _date.minute, second: _date.second);
  final List<String> weekdayString = ['월', '화', '수', '목', '금', '토', '일'];
  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });
  }

  Future _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2099),
      cancelText: "취소",
      confirmText: "확인",
    );
    if (selected != null) {
      setState(() {
        _date = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Assignment'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '과제 제목',
                // helperText: 'asdf'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '과제 과목'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _selectDate(context);
                  },
                  child: Text("마감날짜 선택"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('${_date.month}월 ${_date.day}일 ${weekdayString[_date.weekday - 1]}요일'),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 18),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      showPicker(
                        context: context,
                        value: _time,
                        onChange: onTimeChanged,
                        disableAutoFocusToNextInput: true,
                        okText: "확인",
                        cancelText: "취소",
                        is24HrFormat: true
                      )
                    );
                  },
                  child: Text("마감시간 선택"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('${_time.hour}:${_time.minute}'),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 36),
            child: Text(
              '${_date.difference(DateTime.now()).inDays}일 남음',
              style: TextStyle(
                fontSize: 48,
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Text(
              '(마감날짜 자정 기준)',
              style: TextStyle(
                  fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: Expanded(
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text(
                  "과제 등록",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}