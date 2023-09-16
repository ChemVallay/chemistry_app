import 'package:chemvalley_app/core/extensions/plugin_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../constants/assets.dart';
import '../../widgets/custom_container_body_home_left.dart';
import '../../widgets/custom_container_body_home_right.dart';

class ColumnRight extends StatelessWidget {
  const ColumnRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainerBodyHomeRight(
          assetImage: Assets.imageChemvallayApp,
          name: 'name',
          radius: 25,
          colorContainer: Colors.red,
          tap: () {},
        ),
        10.getH,
        CustomContainerBodyHomeRight(
          assetImage: Assets.imageChemvallayApp,
          name: 'name',
          radius: 25,
          colorContainer: Colors.red,
          tap: () {},
        ),
        10.getH,
        CustomContainerBodyHomeRight(
          assetImage: Assets.imageChemvallayApp,
          name: 'name',
          radius: 25,
          colorContainer: Colors.red,
          tap: () {},
        ),
      ],
    );
  }
}

class ColumnLeft extends StatelessWidget {
  const ColumnLeft({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainerBodyHomeLeft(
          assetImage: Assets.imageChemvallayApp,
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.red,
          tap: () {},
        ),
        10.getH,
        CustomContainerBodyHomeLeft(
          assetImage: Assets.imageChemvallayApp,
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.blue.shade800,
          tap: () {},
        ),
        10.getH,
        CustomContainerBodyHomeLeft(
          assetImage: Assets.imageChemvallayApp,
          tap: () {},
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.blue.shade500,
        ),
        10.getH,
        CustomContainerBodyHomeLeft(
          assetImage: Assets.imageChemvallayApp,
          tap: () {},
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.red.shade200,
        ),
        10.getH,
        CustomContainerBodyHomeLeft(
          assetImage: Assets.imageChemvallayApp,
          tap: () {},
          name: 'Electron',
          radius: 25,
          colorContainer: Colors.red.shade800,
        ),
      ],
    );
  }
}
