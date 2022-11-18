import 'package:flutter/material.dart';

class RegesterScreen extends StatelessWidget {
  const RegesterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hhhffff")),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.call))
        ],
      ),
    );
  }
}
