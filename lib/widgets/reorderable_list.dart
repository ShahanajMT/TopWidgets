import 'package:flutter/material.dart';

class ReOrderableListView extends StatefulWidget {
  const ReOrderableListView({super.key});

  @override
  State<ReOrderableListView> createState() => _ReOrderableListViewState();
}

class _ReOrderableListViewState extends State<ReOrderableListView> {
  List<int> items = List.generate(30, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final int item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
          children: List.generate(
            items.length,
            (index) => ListTile(
              key: Key('$index'),
              titleTextStyle: TextStyle(color: items[index].isOdd ? Colors.red : Colors.blue),
              title: Text(
                'Item ${items[index]}',
              ),
              trailing: const Icon(Icons.drag_handle_outlined),
              
            ),
          ),
          
        ),
      ),
    );
  }
}
