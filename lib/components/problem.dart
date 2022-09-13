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
      margin: const EdgeInsets.only(bottom: 6),
      child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'Как перевести на русский',
                style: Theme.of(context).textTheme.bodyText1
            ),
            const SizedBox(height: 3),
            Text(
                widget.answer,
                style: Theme.of(context).textTheme.headline2
            )
          ],
        ),
    );
  }
}
