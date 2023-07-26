import 'package:flutter/material.dart';

class InterVie extends StatefulWidget {
  const InterVie({super.key});

  @override
  State<InterVie> createState() => _InterVieState();
}

class _InterVieState extends State<InterVie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(title: const Text('Interactive Viewer'),),
        ),
      ),
    );
  }
}
