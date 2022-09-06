// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:barev/config/themes.dart';
import 'package:barev/pages/flow.dart';
import 'package:flutter/material.dart';

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
      home: const FlowPage()
    );
  }
}