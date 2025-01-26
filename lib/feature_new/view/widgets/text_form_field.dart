import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:app3/feature_new/view/widgets/border.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class textFormField extends StatelessWidget {
  const textFormField(
      {super.key,
      required this.label,
      required this.hint,
      required this.controller,
      required this.prefix,
      
      required this.textInputType,
      required this.validator});
  final String label;
  final String hint;
  final TextEditingController controller;
  final Widget prefix;
  
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: textInputType,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          hintText: hint,
          prefixIcon: prefix,
          
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          enabledBorder: border(color: AppColors.textColor, radius: 30),
          focusedBorder: border(color: AppColors.buttonColorGray, radius: 30),
        ));
  }
}
