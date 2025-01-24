import 'package:flutter/material.dart';
import 'package:widget/myhomepage.dart';

class MySlashscreen extends StatefulWidget {
  
  const MySlashscreen({super.key});

  @override
  State<MySlashscreen> createState() => _MySlashscreenState();
}

class _MySlashscreenState extends State<MySlashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage ()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/img/img.png', width: 100, height: 100),
      ),
    );
  }
}