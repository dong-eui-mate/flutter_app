import 'package:flutter/material.dart';
import 'package:timetable_view/timetable_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double tHeight = 32;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(18, 18, 18, 9),
          padding: EdgeInsets.all(18),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.grey,
                width: 3
            ),
            borderRadius: BorderRadius.all(Radius.circular(24))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("부산진구", style: TextStyle(fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("29℃", style: TextStyle(fontSize: 48, color: Colors.red),),
                  Icon(Icons.sunny, color: Colors.amber,size: 60,)
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.sunny),
                            SizedBox(width: 6,),
                            Text("31℃")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.severe_cold),
                            SizedBox(width: 6,),
                            Text("25℃")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.water_drop),
                            SizedBox(width: 6,),
                            Text("81%")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.wind_power),
                            SizedBox(width: 6,),
                            Text("6m/s")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(18, 18, 18, 9),
          padding: EdgeInsets.all(18),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey,
                  width: 3
              ),
              borderRadius: BorderRadius.all(Radius.circular(24))
          ),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(
                children: [
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("월"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("화"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("수"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("목"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("금"),),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("9"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.pinkAccent,
                    child: Center(child: Text("철학의향기와\n역사이야기", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.lightGreen,
                    child: Center(child: Text("확률과통계", style: TextStyle(fontSize: 8),),),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("10"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.pinkAccent,
                    child: Center(child: Text("철학의향기와\n역사이야기", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.pinkAccent,
                    child: Center(child: Text("철학의향기와\n역사이야기", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.lightGreen,
                    child: Center(child: Text("확률과통계", style: TextStyle(fontSize: 8),),),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("11"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.lightGreen,
                    child: Center(child: Text("확률과통계", style: TextStyle(fontSize: 8),),),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("12"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.amberAccent,
                    child: Center(child: Text("알고리즘", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("13"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.purpleAccent,
                    child: Center(child: Text("그래픽스2", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.pinkAccent,
                    child: Center(child: Text("데이터베이스", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.amberAccent,
                    child: Center(child: Text("알고리즘", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.deepOrangeAccent,
                    child: Center(child: Text("캡스톤디자인", style: TextStyle(fontSize: 8),),),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("14"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.purpleAccent,
                    child: Center(child: Text("그래픽스2", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.pinkAccent,
                    child: Center(child: Text("데이터베이스", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.pinkAccent,
                    child: Center(child: Text("데이터베이스", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.amberAccent,
                    child: Center(child: Text("알고리즘", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.deepOrangeAccent,
                    child: Center(child: Text("캡스톤디자인", style: TextStyle(fontSize: 8),),),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("15"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.deepOrangeAccent,
                    child: Center(child: Text("지교세", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.purpleAccent,
                    child: Center(child: Text("그래픽스2", style: TextStyle(fontSize: 8),),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.deepOrangeAccent,
                    child: Center(child: Text("캡스톤디자인", style: TextStyle(fontSize: 8),),),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    height: tHeight,
                    color: Colors.white,
                    child: Center(child: Text("16"),),
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                  Container(
                    height: tHeight,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}