import 'package:flutter/material.dart';


class Problem extends StatelessWidget {
  const Problem({Key? key}) : super(key: key);

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
              'բաժակ',
              style: Theme.of(context).textTheme.headline2
            )
          ],
        ),
      ),
    );
  }
}
