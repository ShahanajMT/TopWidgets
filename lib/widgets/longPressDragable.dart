import 'package:flutter/material.dart';

class LongPress extends StatefulWidget {
  const LongPress({super.key});

  @override
  State<LongPress> createState() => _LongPressState();
}

class _LongPressState extends State<LongPress> {
  Offset _offset = const Offset(200, 250);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                left: _offset.dx,
                right: _offset.dx,
                child: LongPressDraggable(
                  
                  feedback: Image.network(
                    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg', 
                    height: 200,
                    scale: 1,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: Image.network(
                    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg',
                    height: 200,
                    scale: 1,
                  ),
                  onDragEnd: (details) {
                    setState(() {
                      double adjustment = MediaQuery.of(context).size.height - constraints.maxHeight;
                      _offset = Offset(details.offset.dx, details.offset.dy - adjustment);
                    });
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
