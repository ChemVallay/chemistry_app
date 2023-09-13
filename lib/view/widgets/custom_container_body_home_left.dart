// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomContainerBodyHomeLeft extends StatelessWidget {
  String? assetSvg;
  String? assetImage;
  String name;
  double radius;
  Color colorContainer;
  void Function()? tap;
  CustomContainerBodyHomeLeft({
    Key? key,
     this.assetSvg,
     this.assetImage,
    required this.name,
    required this.radius,
    required this.colorContainer,
     this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        width: 185,
        height: 200,
        decoration: BoxDecoration(
          color: colorContainer,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              assetSvg!,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            Image.asset(
              assetSvg!,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            Center(child: Text(name))
          ],
        ),
      ),
    );
  }
}
