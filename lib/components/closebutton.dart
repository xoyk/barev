import 'package:flutter/material.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: const Icon(
        Icons.close,
        size: 24,
      ),
    );
  }
}
