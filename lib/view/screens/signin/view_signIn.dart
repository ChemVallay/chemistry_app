import 'package:chemvalley_app/core/extensions/plugin_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../constants/assets.dart';
import '../../../core/theme/theme.dart';
import '../../widgets/custom_text_form_field.dart';

class ViewSignIn extends StatefulWidget {
  const ViewSignIn({super.key});

  @override
  State<ViewSignIn> createState() => _ViewSignInState();
}

class _ViewSignInState extends State<ViewSignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> fKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var qw = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Themes.colorApp,
      //Theme.of(context).canvasColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              Assets.imageChemvallayApp,
              width: 188,
              height: 188,
            ),
            80.getH,
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                height: qw.height / 1.9,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Form(
                    key: fKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        40.getH,
                        CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          hint: "Enter Email",
                          controller: email,
                          obx: false,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return " Plz Enter Email";
                            }
                            return null;
                          },
                        ),
                        20.getH,
                        CustomTextFormField(
                          keyboardType: TextInputType.text,
                          obx: true,
                          hint: "Enter Password",
                          controller: password,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return " Plz Enter Password";
                            }
                            return null;
                          },
                        ),
                        20.getH,
                        SizedBox(
                          width: double.infinity,
                          height: qw.height / 18,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(
                                left: 25,
                                right: 25,
                              ),
                              backgroundColor: Themes.colorApp,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/home");
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        40.getH,
                        Text.rich(TextSpan(children: [
                          const TextSpan(
                            text: "Don`t Have an Account ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                              text: "Sign Up",
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                              onEnter: (v) {
                                Navigator.pushNamed(context, "/signup");
                              }),
                        ]))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
