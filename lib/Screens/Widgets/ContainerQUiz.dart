import 'package:flutter/material.dart';
import 'package:khaled/Screens/mcq.dart';

class Containerquiz extends StatelessWidget {
  final Color color;
  final String text;
  final int numberOfExam;
  const Containerquiz(
      {super.key,
      required this.color,
      required this.text,
      required this.numberOfExam});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          print(text);
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  Mcq(numberOfExam: numberOfExam),
            ),
          );
        },
        child: Container(
          color: color,
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
