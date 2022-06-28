// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app_pencilbox/all_data.dart';

class QuestionItem extends StatefulWidget {
  final Map<String, dynamic> questionData;
  final Function onAnswered;
  QuestionItem({Key? key, required this.questionData, required this.onAnswered})
      : super(key: key);

  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem> {
  var groupValue = "";
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15,top: 15),
      elevation: 5,
      shadowColor: Colors.blue.withOpacity(0.5),
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              widget.questionData[question],
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Column(
              children: (widget.questionData[answer] as List)
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                         
                         dense: true,
                         onTap: (){
                             
                         },

                        
                        tileColor: groupValue == e ? Color(0xffffe6f0).withOpacity(0.5): Color(0xffe6f9ff).withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color:  groupValue == e ? Colors.red: Colors.blue),
                            borderRadius: BorderRadius.circular(15)),
                             
                        leading: Radio<String>(
                          value: e,
                          groupValue: groupValue,
                          fillColor:MaterialStateColor.resolveWith((states) => groupValue == e ? Colors.red: Colors.blue),
                          onChanged: (value) {
                            setState(() {
                              groupValue = value as String;
                            });
                             widget.onAnswered(groupValue);
                          },
                         
                        ),
                        title: Text(e),
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
