import 'package:flutter/material.dart';
import 'package:khaled/Screens/Widgets/ContainerQUiz.dart';
import 'package:khaled/Screens/data/BookExams.dart';

// ignore: must_be_immutable
class Catgory extends StatefulWidget {
  Catgory({super.key});

  @override
  State<Catgory> createState() => _CatgoryState();
}

class _CatgoryState extends State<Catgory> {
  List<Map> dataQu = [
    {
      'color': Colors.red,
      'text': 'Quiz A',
    },
    {'color': Colors.blue, 'text': 'quiz b'},
    {
      'color': Colors.white,
      'text': "quiz c",
    },
    {
      'color': Colors.orange,
      'text': 'Quiz A',
    },
    {
      'color': Colors.green,
      'text': 'Quiz A',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < BookExams.length; i++)
            Containerquiz(
              color: dataQu[i]['color'],
              //  text: dataQu[i]['text'],
              text: BookExams[i]['nameQuiz'],
              numberOfExam: i,
            )
        ],
      ),
    );
  }
}
