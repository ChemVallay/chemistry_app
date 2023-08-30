import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  bool? obx = false;
  String? hint;
  CustomTextFormField({
    Key? key,
    required this.controller,
    required this.validator,
    this.keyboardType,
    this.obx,
    this.hint,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        decoration:  InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(fontSize: 16,),
          filled: true,
          fillColor: Colors.white,
        ),
        obscureText: obx!,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
      ),
    );
  }
}
