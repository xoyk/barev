import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.symmetric(vertical: 14.5),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(16),
        // color: Colors.red
      ),
      child:
      Row(
        children: const [
          Expanded(
            child:
            Text(
              'Далее',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 18, 18, 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
