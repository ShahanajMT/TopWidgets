import 'package:flutter/material.dart';
import 'package:topwidgets/widgets/checkBoxListTile.dart';
import 'package:topwidgets/widgets/cupertino_context_menu.dart';
import 'package:topwidgets/widgets/interactive_viewer.dart';
import 'package:topwidgets/widgets/longPressDragable.dart';

import 'widgets/animatedTextStyle.dart';
import 'widgets/reorderable_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Offset _offset = const Offset(200, 250);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App'),
      ),
      body: Container(
        color: Colors.redAccent,
        child: Column(
          children: [
            //! Material Banner
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    leading: const Icon(Icons.notifications),
                    content: const Text('Subscribe'),
                    contentTextStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w300),
                    backgroundColor: Colors.grey,
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: const Text('Dismiss'))
                    ],
                  ),
                );
              },
              child: const Text('Open'),
            ),

            //! BottomSheet
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  //barrierColor: Colors.green,

                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: double.infinity,
                      child: const Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '____',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text('BottomSheet'),
            ),

            //! LongPressDragable
            ActionChip(
              label: const Icon(Icons.slideshow),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LongPress()));
              },
            ),

            //! Interactive Viewer
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const InterVie()));
              },
              child: const Text('Interactive Viewer'),
            ),

            //! ReOrderableListView
            ElevatedButton(
              onPressed: () {
                 Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>  const ReOrderableListView()));
              },
              child: const Text('ReOrderavleListView'),
            ),

            //! CheckBox
            ElevatedButton(
              onPressed: () {
                 Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>  const CheckBoxLi()));
              },
              child: const Text('CheckBox'),
            ),

            //! CupertinoContextMenu
            ElevatedButton(
              onPressed: () {
                 Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>  const CuperTinnoCtxMenu()));
              },
              child: const Text('CupertinoContextMenu'),
            ),

            //! AnimatedDefaultTxt
            ElevatedButton(
              onPressed: () {
                 Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>  const AnimatedTxt()));
              },
              child: const Text('AnimatedDefaultTxt'),
            ),
          ],
        ),
      ),
    );
  }
}
