import 'package:app3/core/validator/validator.dart';
import 'package:app3/home/catogeryCard/home/view/Widgets/colors.dart';
import 'package:app3/home/catogeryCard/home/view/screen/cards_screen.dart';
import 'package:app3/home/logIn/cubit/cubit/log_in_cubit.dart';
import 'package:app3/home/logIn/cubit/cubit/log_in_state.dart';
import 'package:app3/home/auth/view/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInCubit(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.textColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30.0),
            ),
          ),
          toolbarHeight: 80,
          title: const Center(
            child: Text(
              "Log In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: AppColors.buttonColorWhite,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: BlocConsumer<LogInCubit, LogInState>(
            listener: (context, state) {
              if (state is LogInSuccessState) {
                if (state.successData["status"] == "success") {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.green,
                      content: Text(state.successData["message"])));
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CardView(),
                  ));
                }
                if (state.successData["status"] == "error") {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(state.successData["message"])));
                }
              }
            },
            builder: (context, state) {
              LogInCubit cubit = LogInCubit.get(context);
              return Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.shopping_cart,
                      color: AppColors.textColor,
                      size: 150,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                        child: textFormField(
                      label: 'Email*',
                      controller: emailcontroller,
                      hint: 'please enter you email',
                      prefix: const Icon(
                        Icons.email,
                        color: AppColors.textColor,
                      ),
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        return MyValidators.emailValidator(value);
                      },
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                        child: textFormField(
                      label: 'Password *',
                      controller: passwordcontroller,
                      hint: 'please enter you password',
                      prefix: const Icon(
                        Icons.password,
                        color: AppColors.textColor,
                      ),
                      textInputType: TextInputType.text,
                      validator: (value) {
                        return MyValidators.passwordValidator(value);
                      },
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                        height: 60,
                        color: AppColors.textColor,
                        minWidth: double.infinity,
                        onPressed: () {
                          cubit.loginTestCubit(
                              email: emailcontroller.text,
                              password: passwordcontroller.text);
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 22, color: AppColors.buttonColorWhite),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CardView()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Don't have an account? Sign In",
                          style: TextStyle(
                              color: AppColors.textColor,
                              decoration: TextDecoration.none)),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
