import 'package:barev/components/progressbar.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 24, bottom: 24),
      height: 48,
      child: Row(
        children: const [
          CloseButton(),
          Expanded(
              child: ProgressBar()
          ),
        ],
      ),
    );
  }
}
