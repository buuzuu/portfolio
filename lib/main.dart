import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/providers/page_position.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create: (_) => PagePosition(),
        child: HomePage(),
      ),
    );
  }
}
