import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  VoidCallback? onperss;
  String? title;
  Color? color;
  RoundedButton({this.onperss, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onperss,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
