import 'package:flutter/material.dart';
import 'package:trusted_time/trusted_time.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final upTime = UptimeFFI();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: Center(
          child: Text('Current Up time :${upTime.getUptimeMillis()} \n'),
        ),
      ),
    );
  }
}
