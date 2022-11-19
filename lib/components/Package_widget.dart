import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';

class PackageCard extends StatelessWidget {
  const PackageCard(
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
              width: 150,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(imageLocation),
              ),
            ),
            Text(
              nameOfCity,
              style: kPackageTextStyle,
            ),
            Text(
              description!,
              style: kPackageTextStyle,
            )
          ],
        ),
        width: 150,
        height: 180,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
