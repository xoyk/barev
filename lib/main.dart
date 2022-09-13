import 'package:barev/config/themes.dart';
import 'package:barev/pages/flow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

void main() {
  runApp(
      const BarevDzes()
  );
}

class BarevDzes extends StatelessWidget {
  const BarevDzes({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = BarevTheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BarevDzes',
      theme: theme,
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => CardManager001())
          ],
          child: const FlowPage()
      )
    );
  }
}