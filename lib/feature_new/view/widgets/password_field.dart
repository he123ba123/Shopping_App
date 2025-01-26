import 'package:app3/core/validator/validator.dart';
import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:app3/feature_new/view/screen/sign%20_In_screen.dart';
import 'package:app3/feature_new/view/widgets/border.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: password,
      keyboardType: TextInputType.name,
      validator: (value) {
        return MyValidators.passwordValidator(value);
      },
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: 'password *',
        hintText: 'please enter you password',
        prefixIcon: const Icon(
          Icons.password,
          color: AppColors.textColor,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        enabledBorder: border(color: AppColors.textColor, radius: 30),
        focusedBorder: border(color: AppColors.buttonColorGray, radius: 30),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
    );
  }
}

   // Padding(
                  //   padding: const EdgeInsets.only(top: 8, right: 2, left: 2),
                  //   child: Form(
                  //       child: textFormField(
                  //     label: 'password *',
                  //     controller: password,
                  //     hint: 'please enter you password',
                  //     prefix: const Icon(
                  //       Icons.password,
                  //       color: AppColors.textColor,
                  //     ),
                  //     textInputType: TextInputType.name,
                  //     validator: (value) {
                  //       return MyValidators.passwordValidator(value);
                  //     },
                  //   )),
                  // ),