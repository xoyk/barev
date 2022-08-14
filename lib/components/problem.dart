import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(0.4),
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'բաժակ',
              style: GoogleFonts.notoSansArmenian(
                  fontSize: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
