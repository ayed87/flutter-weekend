import 'package:flutter/material.dart';

class RondedCard extends StatelessWidget {
  const RondedCard({required this.color, this.cardChild, this.ontap});
  final Color color;
  final Widget? cardChild;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
