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
      theme: ThemeData(),
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
        title: Text("Rows and Columns"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          // IN crossAcisAlignment -> height should be contain in container
          children: [
            Text(
              "R1",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "R2",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              width: 400,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "C1",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "C2",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      // ***************Simple Nested Rows and Columns********************
      // Container(
      //   height: 200,
      //   color: Colors.greenAccent,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Text(
      //             "R1",
      //             style: TextStyle(fontSize: 20),
      //           ),
      //           Text(
      //             "R2",
      //             style: TextStyle(fontSize: 20),
      //           ),
      //           Column(
      //             children: [
      //               ElevatedButton(onPressed: () {}, child: Text("Button1")),
      //               Text("data"),
      //             ],
      //           ),
      //           Text(
      //             "R3",
      //             style: TextStyle(fontSize: 20),
      //           ),
      //           Text(
      //             "R4",
      //             style: TextStyle(fontSize: 20),
      //           ),
      //           Text(
      //             "R5",
      //             style: TextStyle(fontSize: 20),
      //           ),
      //         ],
      //       ),
      //       Text(
      //         "C1",
      //         style: TextStyle(fontSize: 20),
      //       ),
      //       Text(
      //         "C2",
      //         style: TextStyle(fontSize: 20),
      //       ),
      //       Text(
      //         "C3",
      //         style: TextStyle(fontSize: 20),
      //       ),
      //       TextButton(onPressed: () {}, child: Text("click"))
      //     ],
      //   ),
      // ),
    );
  }
}


// **********Practice Of Nested Rows and Columns by my side**************************

// body: Container(
//         color: Colors.amber[100],
//         child: Row(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           // crossAxisAlignment: CrossAxisAlignment.end,
//           // crossAxisAlignment: CrossAxisAlignment.stretch,
//           // crossAxisAlignment: CrossAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: 500,
//               color: Colors.grey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     color: Colors.green[100],
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "R1",
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         Text(
//                           "R2",
//                           style: TextStyle(fontSize: 20),
//                         ),
//                         Text(
//                           "R3",
//                           style: TextStyle(fontSize: 20),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Text(
//                     "C1",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   Container(
//                     height: 200,
//                     color: Colors.greenAccent,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text("data1"),
//                         Container(
//                             height: 200,
//                             width: 50,
//                             color: Colors.lightGreen,
//                             child: Center(child: Text("data2"))),
//                         Text("data3"),
//                         Text("data4"),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     color: Colors.red[200],
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         TextButton(onPressed: () {}, child: Text("data"))
//                       ],
//                     ),
//                   ),
//                   Text(
//                     "C2",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   Text(
//                     "C3",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   Text(
//                     "C4",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//             Text(
//               "A",
//               style: TextStyle(fontSize: 20),
//             ),
//             Container(
//               width: 100,
//               color: Colors.deepOrange[100],
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('DataC1'),
//                   Text('DataC2'),
//                   Text('DataC3'),
//                   Text('DataC4'),
//                 ],
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "B",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 Text(
//                   "C1",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 Container(
//                   color: Colors.purpleAccent[100],
//                   width: 100,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Text('R1'),
//                       Text('R2'),
//                       Text('R3'),
//                       Text('R4'),
//                     ],
//                   ),
//                 ),
//                 Text(
//                   "C2",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 Text(
//                   "C3",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ],
//             ),
//             Text(
//               "C",
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               "D",
//               style: TextStyle(fontSize: 20),
//             ),
//             ElevatedButton(onPressed: () {}, child: Text("Click"))
//           ],
//         ),
//       ),