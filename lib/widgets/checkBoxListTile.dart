import 'package:flutter/material.dart';

class CheckBoxLi extends StatefulWidget {
  const CheckBoxLi({super.key});

  @override
  State<CheckBoxLi> createState() => _CheckBoxLiState();
}

class _CheckBoxLiState extends State<CheckBoxLi> {
  bool? _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: CheckboxListTile(
            value: _isChecked,
            onChanged: (newValue) {
              setState(() {
                _isChecked = newValue;
                
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.white,
            mouseCursor: MaterialStateMouseCursor.clickable,
            //tileColor: Colors.black,
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text('Are You Comfortable'),
            subtitle: const Text('Ok !'),
        
        
          ),
        ),
      ),
    );
  }
}
