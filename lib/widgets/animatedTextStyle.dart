import 'package:flutter/material.dart';

class AnimatedTxt extends StatefulWidget {
  const AnimatedTxt({super.key});

  @override
  State<AnimatedTxt> createState() => _AnimatedTxtState();
}

class _AnimatedTxtState extends State<AnimatedTxt> {
  //!
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            //color: Colors.greenAccent,
            height: 120,
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                  color: _color,
                  fontSize: _fontSize,
                  fontWeight: FontWeight.bold),
              duration: const Duration(microseconds: 300),
              child: const Text('Flutter'),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: const Text('Switch'),
          ),
        ],
      ),
    );
  }
}
