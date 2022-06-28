// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz_app_pencilbox/all_data.dart';

class ResultPage extends StatefulWidget {
  static const routeName = "result-page";
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  
  int rightAnswerCount = 0;
  

  @override
  Widget build(BuildContext context) {
    calculateResult();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        actions: [
                PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("History"),
                    )
                  ])
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),

      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width-50,
          height: 450,
          child: Card(
           // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
           color: Color(0xffffe6f0),
            elevation: 5,
      shadowColor: Colors.red.withOpacity(0.5),
      
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.red
        ),
        borderRadius: BorderRadius.circular(20)),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(height:10,),

                Image.asset(rightAnswerCount >=5 ? "images/congra.png":"images/sad.png", height: 100, width: 200, fit: BoxFit.fitHeight,),
                SizedBox(height: 25,),
                Text("Your Scrore: $rightAnswerCount", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19,letterSpacing: 1, color: Colors.red),),
                             SizedBox(height: 5,),
                Text("Quiz Completed successfully", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,letterSpacing: 1),),
                               SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text("You attempt 10 questions and from that $rightAnswerCount answer is correct",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500,letterSpacing: 1,color: Colors.green),),
                )
                
              ],),

            
          ),
        ),
      ),
    );
  }

  calculateResult(){

    for(var map in questionListData){
      if(map[givenAnswer] == map[rightAnswer]){
        rightAnswerCount++;
      }
    }
  }
}
