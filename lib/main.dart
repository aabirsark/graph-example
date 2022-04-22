import 'package:flutter/material.dart';
import 'package:graphs/home.page.dart';

void main() => runApp(const GraphsApp());

class GraphsApp extends StatelessWidget {
  const GraphsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Graph App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0.0,
      )),
      home: const HomePage(),
    );
  }
}
