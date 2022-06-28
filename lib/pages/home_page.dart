// ignore_for_file: prefer_const_constructors

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [

          IconButton(onPressed: (){

            Navigator.of(context).pushNamed(ResultPage.routeName);



          }, icon: Icon(Icons.send_outlined)),
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("History"),
                    )
                  ])
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: ListView.builder(
            itemCount: questionListData.length,
            itemBuilder: (context, index) => QuestionItem(
                  questionData: questionListData[index],
                   onAnswered: (value) {
              questionListData[index][givenAnswer] = value;
            },
                )),
      ),
    );
  }
}
