import 'package:chemvalley_app/constants/assets.dart';
import 'package:chemvalley_app/core/extensions/plugin_sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import '../../widgets/custom_text_form_field.dart';

class ViewSignUp extends StatefulWidget {
  const ViewSignUp({super.key});

  @override
  State<ViewSignUp> createState() => _ViewSignUpState();
}

class _ViewSignUpState extends State<ViewSignUp> {
  TextEditingController name = TextEditingController();
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
                height: qw.height / 1.0,
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
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        40.getH,
                        CustomTextFormField(
                          keyboardType: TextInputType.text,
                          obx: false,
                          hint: "Enter FullName",
                          controller: name,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return " Plz Enter FullName";
                            }
                            return null;
                          },
                        ),
                        13.getH,
                        CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          obx: false,
                          hint: "Enter Email",
                          controller: email,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return " Plz Enter Email";
                            }
                            return null;
                          },
                        ),
                        13.getH,
                        CustomTextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obx: true,
                          hint: "Enter Password",
                          controller: password,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                        ),
                        13.getH,
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
                              if (fKey.currentState!.validate()) {
                                print('saved');
                                fKey.currentState?.save();
                                //Navigator.pushReplacementNamed(context, "/login");
                              }
                              Navigator.pushNamed(context, "/layout");
                            },
                            child: const Text('Sign Up'),
                          ),
                        ),
                        25.getH,
                        Text.rich(TextSpan(children: [
                          const TextSpan(text: "Have an Account "),
                          TextSpan(
                              text: "Sign In",
                              onEnter: (v) {
                                //Navigator.pushNamed(context, "/signin");
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
