import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

import 'usage_graph_page.dart';

void main() {
  runApp(const DiskSpaceUsageApp());

  doWhenWindowReady(() {
    const initialSize = Size(1280, 720);

    appWindow
      ..minSize = initialSize
      ..size = initialSize
      ..alignment = Alignment.center
      ..title = 'Disk Space Usage'
      ..show();
  });
}

class DiskSpaceUsageApp extends StatelessWidget {
  const DiskSpaceUsageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiskSpaceUsage',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: MediaQuery.of(context).platformBrightness,
        ),
        useMaterial3: true,
      ),
      home: const UsageGraphPage(),
    );
  }
}
