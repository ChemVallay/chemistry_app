import 'package:flutter/material.dart';

import '../../../constants/assets.dart';
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
          colorContainer: Colors.red,
        ),
      ],
    );
  }
}

class ColumnRight extends StatelessWidget {
  const ColumnRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainerBodyHomeLeft(
          assetSvg: Assets.imageChemvallayApp,
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.red,
        ),
        CustomContainerBodyHomeLeft(
          assetSvg: Assets.imageChemvallayApp,
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.blue.shade800,
        ),
        CustomContainerBodyHomeLeft(
          assetSvg: Assets.imageChemvallayApp,
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.blue.shade500,
        ),
        CustomContainerBodyHomeLeft(
          assetSvg: Assets.imageChemvallayApp,
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.red.shade200,
        ),
        CustomContainerBodyHomeLeft(
          assetSvg: Assets.imageChemvallayApp,
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.red.shade800,
        ),
      ],
    );
  }
}
