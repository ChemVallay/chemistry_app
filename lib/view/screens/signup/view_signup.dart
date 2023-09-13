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
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
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
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        40.getH,
                        CustomTextFormField(
                          hint: "Enter Full Name",
                          controller: name,
                          validator: (v) {
                            if (v!.isEmpty) {
                              return " Plz Enter Full Name";
                            }
                            return null;
                          },
                        ),
                        20.getH,
                        CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          hint: "Enter Email",
                          controller: email,
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
                              Navigator.pushNamed(context, "/signin");
                            },
                            child: const Text('Sign Up'),
                          ),
                        ),
                        Text.rich(TextSpan(children: [
                          const TextSpan(text: "Have an Account "),
                          TextSpan(
                              text: "Sign In",
                              onEnter: (v) {
                                Navigator.pushNamed(context, "/signin");
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
