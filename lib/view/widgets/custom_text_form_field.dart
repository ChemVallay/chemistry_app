import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  bool? obx = false;
  String hint;
  CustomTextFormField({
    Key? key,
    required this.controller,
    required this.validator,
    this.keyboardType,
    this.obx,
    required this.hint,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        //autofocus: true,
        //autocorrect: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintMaxLines: 3,
          //isDense:true,
          //contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
          //errorMaxLines: 0,
          errorBorder: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 16,
          ),
          filled: true,
          fillColor: Colors.white,
          focusedErrorBorder: InputBorder.none,
        ),
        obscureText: obx!,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
      ),
    );
  }
}
