import 'package:flutter/material.dart';

import '../../../core/extensions/navigator_app.dart';
import '../../../view_model/electron-config/electron_view_model.dart';
import '../../widgets/custom_text_form_field.dart';

class ViewElectronConfiguration extends StatelessWidget {
  ViewElectronConfiguration({super.key});
  ViewModelElectronPreview model = ViewModelElectronPreview();
  @override
  Widget build(BuildContext context) {
    var search = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomPublicAppBar(),
      ),
      body: Column(
        children: [
          Center(
            child: Text(model.textBodyElectron),
          ),
          CustomTextFormField(
            controller: search,
            validator: (v){},
            hint: 'Enter Element',
            obx: false,
          ),
        ],
      ),
    );
  }
}

class CustomPublicAppBar extends StatelessWidget {
  const CustomPublicAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: GestureDetector(
          onTap: () {
            Goo.pop(context);
            //          Navigator.of(context).popUntil((route){
            //            print("Route ${route}");
            //              if (route is PageRoute<dynamic> && route.settings == null )return true;else{
            //                return false;}
            //          },);

            //          Navigator.popUntil(context,(route)=> route is MaterialPageRoute);
            //        Navigator.of(context).pushReplacementNamed('/home');
            //            Navigator.of(context).popAndPushNamed("/home");
            //          Navigator.of(context).maybePop() ?? Navigator.of(context).pushReplacementNamed('/');
            //          Navigator.of(context).pushReplacementNamed("/");
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded)),
      iconTheme: Theme.of(context).iconTheme,
      title: Text('Electron Configuration',
          style: Theme.of(context).textTheme.titleMedium),
      titleSpacing: -15,
      //            actions: [IconButton()],
      centerTitle: true,
      toolbarOpacity: .98,
      //                bottom: TabBar(),
      //                  ),
    );
  }
}
