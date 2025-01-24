import 'package:flutter/material.dart';
class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          color: Colors.yellow,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
