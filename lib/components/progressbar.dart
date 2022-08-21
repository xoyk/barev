import 'package:barev/config/const.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key, required valueBar}) : super(key: key);

  get valueBar => 0.5;

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 18, 18, 18),
            width: 1,
            style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child:
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child:
        LinearProgressIndicator
          (
          color: kViolet,
          value: widget.valueBar,
          minHeight: 8,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
