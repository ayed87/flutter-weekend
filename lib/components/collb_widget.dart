import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';

class CollbCard extends StatelessWidget {
  const CollbCard(
      {this.ontap,
      required this.nameOfCity,
      required this.imageLocation,
      this.description});
  final VoidCallback? ontap;
  final String imageLocation;
  final String nameOfCity;
  final String? description;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 160,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(imageLocation),
              ),
            ),
            Text(
              nameOfCity,
              style: kCityNameTextStyle,
            ),
            Text(
              description!,
              style: kDescriptionTextStyle,
            )
          ],
        ),
        width: 160,
        height: 200,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
