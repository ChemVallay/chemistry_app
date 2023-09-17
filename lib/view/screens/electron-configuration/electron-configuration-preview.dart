import 'package:flutter/material.dart';

import '../../widgets/custom_globle_appBar.dart';

class ViewElectronConfiguration extends StatelessWidget {
  const ViewElectronConfiguration({super.key});

  @override
  Widget build(BuildContext context) {
    var search = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: CustomGlobuleAppBar(name: 'ElectronConfiguration',widget: Container(child: TextFormField(
            controller: search,
            decoration: const InputDecoration(labelText: 'labelName'),
            textInputAction: TextInputAction.none,
            keyboardType: TextInputType.text,
          ),),)),
      body: const Center(
        child: Text('Scaffold Body'),
      ),
    );
  }
}
