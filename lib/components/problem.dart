import 'package:flutter/material.dart';


class Problem extends StatefulWidget {
  final String answer;

  Problem({Key? key, required this.answer}) : super(key: key);

  @override
  State<Problem> createState() => _ProblemState();
}

class _ProblemState extends State<Problem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 46),
      child:
      Expanded(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Выберите правильное изображение',
              style: Theme.of(context).textTheme.bodyText1
            ),
            Text(
              widget.answer,
              style: Theme.of(context).textTheme.headline2
            )
          ],
        ),
      ),
    );
  }
}
