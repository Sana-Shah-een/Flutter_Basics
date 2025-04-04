import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Center(child: Text("Center Widget")),
        backgroundColor: Colors.blue,
      ),
      // body: Center(
      //     child: Text(
      //   "Hello World!",
      //   style: TextStyle(fontSize: 20),
      // )),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.grey,
          child: Center(
            child: Text(
              "This is Center of the container",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
