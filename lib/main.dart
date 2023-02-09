import 'package:flutter/material.dart';
import 'package:maplist/maplist.dart';
import 'package:maplist/maplistview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(68),
          child: Container(
            height: 68,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/logo.png"),
                  fit: BoxFit.contain),
            ),
          ),
        ),
        body: MapListVeew(),
        // body:
      ),
    );
  }
}
