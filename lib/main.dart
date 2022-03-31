import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';

import 'onboard/view/onboard_view.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return ErrorMaterialWidget(details: details);
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnBoard View',
      showPerformanceOverlay: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const BaseScaffold(),
      initialRoute: "/",
      routes: {
        "/": ((context) => const OnBoardView()),
      },
    );
  }
}
