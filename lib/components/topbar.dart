import 'package:barev/components/progressbar.dart';
import 'package:barev/utils/methods.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 24, bottom: 24),
      height: 48,
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                goHome(context: context);
              },
              child: const CloseButton()
          ),
          const Expanded(
              child: ProgressBar(valueBar: 0.3)
          ),
        ],
      ),
    );
  }
}
