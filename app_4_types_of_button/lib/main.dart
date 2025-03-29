import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Buttons"),
      ),
      body: TextButton(
        child: Text("Text/Flat Button!"),
        onPressed: () {
          print("Text Button Pressed");
        },
        onLongPress: () {
          print("Long Pressed");
        },
      ),
      // ElevatedButton(
      //   child: Text("Elevated Button"),
      //   onPressed: () {
      //     print("Elevated Button Pressed");
      //   },
      // ),
      // OutlinedButton(
      //   child: Text("Outlined Button"),
      //   onPressed: () {
      //     print("Outlined Button Pressed");
      //   },
      // ),
    );
  }
}
