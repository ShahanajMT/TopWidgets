import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuperTinnoCtxMenu extends StatefulWidget {
  const CuperTinnoCtxMenu({super.key});

  @override
  State<CuperTinnoCtxMenu> createState() => _CuperTinnoCtxMenuState();
}

class _CuperTinnoCtxMenuState extends State<CuperTinnoCtxMenu> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: 100,
        width: 100,
        child: CupertinoContextMenu(
          
          actions: [
            TextButton(onPressed: () {}, child: const Text("View all"),),
            TextButton(onPressed: () {}, child: const Text("See all"),)
          ],
          child:  Image.network('https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iuFNMS8U5cb6xfzi51Dbkovj7vM.jpg')
        ),
      ),
    );
  }
} 