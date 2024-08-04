import 'package:flutter/material.dart';
import 'package:khaled/Screens/Login.dart';
import 'package:khaled/Screens/Score.dart';
import 'package:khaled/Screens/data/BookExams.dart';

class Mcq extends StatefulWidget {
  final int numberOfExam;
  const Mcq({
    super.key,
    required this.numberOfExam,
  });

  @override
  State<Mcq> createState() => _McqState();
}

class _McqState extends State<Mcq> {
  int curentQs = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(BookExams[widget.numberOfExam]['nameQuiz']),
        actions: [
          // Text((BookExams[0]['theQuestion'] as List).length as String),
          Text(
              '${curentQs + 1}  /  ${BookExams[widget.numberOfExam]['theQuestion'].length} '),
          SizedBox(
            width: 20,
          )
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            //      Text(BookExams[widget.numberOfExam]['theQuestion'].length),

            //// why here prent error
            ////
            Text(
              BookExams[widget.numberOfExam]['theQuestion'][curentQs]
                  ['questionName'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Column(
              children: [
                for (int i = 0;
                    i <
                        BookExams[widget.numberOfExam]['theQuestion'][curentQs]
                                ['answers']
                            .length;
                    i++)
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if ((curentQs + 1) ==
                              BookExams[widget.numberOfExam]['theQuestion']
                                  .length) {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => Score(),
                              ),
                            );
                          } else if ((curentQs + 1) <=
                              BookExams[widget.numberOfExam]['theQuestion']
                                  .length) {
                            curentQs++;
                          }
                        });
                      },
                      child: Text(BookExams[widget.numberOfExam]['theQuestion']
                          [curentQs]['answers'][i]['ans'])),
              ],
            )
          ],
        ),
      ),
    );
  }
}
