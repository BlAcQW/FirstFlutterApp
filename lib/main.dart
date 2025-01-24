
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget/slashscreen.dart';

import 'basic_screen.dart';
import 'immutable_widget.dart';

void main() => runApp(const StaticApp());
class StaticApp extends StatelessWidget {
  const StaticApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const ImmutableWidget(),
      home : MySlashscreen(),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'dart:async';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.grey[100],
//       ),
//       home: LifecycleDemo(),
//     );
//   }
// }
//
// class LifecycleDemo extends StatefulWidget {
//   @override
//   _LifecycleDemoState createState() => _LifecycleDemoState();
// }
//
// class _LifecycleDemoState extends State<LifecycleDemo> {
//   String _message = "Initial State";
//   late Timer _timer;
//   int _counter = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     print("initState called");
//     _message = "Widget Initialized";
//
//     // Start a timer to increment the counter every second
//     _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         _counter++;
//       });
//     });
//   }
//
//   @override
//   void didUpdateWidget(covariant LifecycleDemo oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     print("didUpdateWidget called");
//   }
//
//   @override
//   void deactivate() {
//     super.deactivate();
//     print("deactivate called");
//   }
//
//   @override
//   void dispose() {
//     print("dispose called");
//     _timer.cancel(); // Cancel the timer to free resources
//     super.dispose();
//   }
//
//   void _navigateToNextScreen(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => SecondScreen()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print("build called");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Lifecycle Demo"),
//         backgroundColor: Colors.blue,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Center(
//                 child: Text(
//                   'Navigation Menu',
//                   style: TextStyle(color: Colors.white, fontSize: 24),
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text("Home"),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.navigate_next),
//               title: Text("Second Screen"),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//                 _navigateToNextScreen(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Card(
//           elevation: 5,
//           margin: EdgeInsets.all(20),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   _message,
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   "Counter: $_counter",
//                   style: TextStyle(fontSize: 20, color: Colors.blue),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       _message = "State Updated";
//                     });
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                   ),
//                   child: Text("Update State"),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   onPressed: () => _navigateToNextScreen(context),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                   ),
//                   child: Text("Go to Second Screen"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Screen"),
//         backgroundColor: Colors.orange,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Welcome to the Second Screen!",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context); // Navigate back to the first screen
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//               ),
//               child: Text("Back to First Screen"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }