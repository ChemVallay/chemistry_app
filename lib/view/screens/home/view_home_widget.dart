import 'package:flutter/material.dart';

import '../../widgets/custom_container_body_home_left.dart';

class ColumnLeft extends StatelessWidget {
  const ColumnLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainerBodyHomeLeft(
            assetSvg: 'assetSvg',
            name: 'name',
            radius: 25,
            colorContainer: Colors.red)
      ],
    );
  }
}
