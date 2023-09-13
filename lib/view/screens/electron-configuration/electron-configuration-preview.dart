import 'package:flutter/material.dart';

import '../../widgets/custom_globle_appBar.dart';

class ViewElectronConfiguration extends StatelessWidget {
  const ViewElectronConfiguration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: CustomGlobuleAppBar(name: 'ElectronConfiguration')),
      body: const Center(
        child: Text('Scaffold Body'),
      ),
    );
  }
}
