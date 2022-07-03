// ignore_for_file: prefer_const_constructors, unused_field

import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_pencilbox/all_data.dart';
import 'package:quiz_app_pencilbox/pages/result_page.dart';
import 'package:quiz_app_pencilbox/widget/question_item.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hasQuizStarted = false;
  String _timeString = '';
  int duration = 10;
  late Timer _timer;
 

  @override
  void didChangeDependencies() { 

    _setTime();

    super.didChangeDependencies();
  }
  
  _setTime() {
    _timeString = DateFormat('mm:ss')
        .format(DateTime.fromMillisecondsSinceEpoch(duration * 1000));
  }
    _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (duration == 0) {
        _timer.cancel();
        Navigator.pushReplacementNamed(context, ResultPage.routeName);
      } else {
        setState(() {
          duration--;
          _setTime();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(ResultPage.routeName);
              },
              icon: Icon(Icons.send_outlined)),
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("History"),
                    )
                  ])
        ],
      ),
      drawer: Drawer(),
      body: !_hasQuizStarted
          ? Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {

                    setState(() {
                      _hasQuizStarted = true;
                      _startTimer();
                    });
                  },
                  child: Text(
                    "Start Quiz",
                    style: TextStyle(fontSize: 17, letterSpacing: 1),
                  )),
            )
          : Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                children: [
                  Text(_timeString, style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500,letterSpacing: 1),),
                  Expanded(
                    child: ListView.builder(
                        itemCount: questionListData.length,
                        itemBuilder: (context, index) => QuestionItem(
                              questionData: questionListData[index],
                              onAnswered: (value) {
                                questionListData[index][givenAnswer] = value;
                              },
                            )),
                  ),
                ],
              ),
            ),
    );
  }
}
