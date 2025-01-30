import 'package:app3/core/validator/validator.dart';
import 'package:app3/home/catogeryCard/home/view/Widgets/colors.dart';
import 'package:app3/home/logIn/view/screen/login_screen.dart';
import 'package:app3/home/auth/cubit/auth_state_cubit.dart';
import 'package:app3/home/auth/cubit/auth_state_state.dart';
import 'package:app3/home/auth/view/widgets/border.dart';
import 'package:app3/home/auth/view/widgets/password_field.dart';
import 'package:app3/home/auth/view/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingnInScreen extends StatefulWidget {
  const SingnInScreen({super.key});

  @override
  State<SingnInScreen> createState() => _AuthScreenState();
}

final TextEditingController name = TextEditingController();
final TextEditingController email = TextEditingController();
final TextEditingController phone = TextEditingController();
final TextEditingController nationalId = TextEditingController();
final TextEditingController gender = TextEditingController();
final TextEditingController password = TextEditingController();
final TextEditingController token = TextEditingController();
final TextEditingController profileImage = TextEditingController();
final List<String> genderOptions = ['Male', 'female', 'Other'];

class _AuthScreenState extends State<SingnInScreen> {
  @override
  void initState() {
    super.initState();
    name.addListener(() {});
    // email.addListener(() {});
    // phone.addListener(() {});
    // nationalId.addListener(() {});
    // gender.addListener(() {});
    // password.addListener(() {});
    // token.addListener(() {});
    // profileImage.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessState) {
          if (state.UserData["status"] == "success") {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.indigoAccent,
                content: Text(state.UserData["message"])));
          }
          if (state.UserData["status"] == "error") {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.red,
                content: Text(state.UserData["message"])));
          }
        }
      },
      // listener: (BuildContext context, AuthState state)
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of(context);
        return Scaffold(
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
                "Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: AppColors.buttonColorWhite,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  authCubit.image == null
                      ? IconButton(
                          onPressed: () {
                            authCubit.addImage();
                          },
                          icon: const Icon(Icons.camera_enhance),
                          iconSize: 100,
                          color: AppColors.textColor,
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: 80.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: FileImage(authCubit.image!),
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Now you can complete your profile ",
                                  style: TextStyle(
                                      fontSize: 22, color: AppColors.textColor),
                                ),
                              ),
                            )
                          ],
                        ),
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 8, right: 2, left: 2),
                  //   child: SizedBox(
                  //     height: 110,
                  //     child: Card(
                  //       color: AppColors.buttonColorWhite,
                  //       child: ListTile(
                  //         // title: const Text(
                  //         //   "Please upload you profile photo",
                  //         //   style: TextStyle(fontSize: 18),
                  //         // ),
                  //         title: authCubit.image == null
                  //             ? Center(
                  //                 child: IconButton(
                  //                     onPressed: () {
                  //                       authCubit.addImage();
                  //                     },
                  //                     icon: const Icon(
                  //                       Icons.camera_enhance,
                  //                       size: 80,
                  //                       color: AppColors.textColor,
                  //                     )),
                  //               )
                  //             : Center(
                  //                 child: Container(
                  //                     height: 80,
                  //                     width: 80,
                  //                     decoration: BoxDecoration(
                  //                       shape: BoxShape.circle,
                  //                       image: DecorationImage(
                  //                         image: FileImage(authCubit.image!),
                  //                         fit: BoxFit.fill,
                  //                       ),
                  //                     )),
                  //               ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // 1
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 2, left: 2),
                    child: Form(
                        child: textFormField(
                      label: 'Name *',
                      controller: name,
                      hint: 'please enter you name',
                      prefix: const Icon(
                        Icons.person,
                        color: AppColors.textColor,
                      ),
                      textInputType: TextInputType.name,
                      validator: (value) {
                        return MyValidators.displayNameValidator(value);
                      },
                    )),
                  ),
                  // 2
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 2, left: 2),
                    child: Form(
                        child: textFormField(
                      label: 'email *',
                      controller: email,
                      hint: 'please enter you email',
                      prefix: const Icon(
                        Icons.email,
                        color: AppColors.textColor,
                      ),
                      textInputType: TextInputType.name,
                      validator: (value) {
                        return MyValidators.emailValidator(value);
                      },
                    )),
                  ),
                  // 3
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 2, left: 2),
                    child: Form(
                        child: textFormField(
                      label: 'phone *',
                      controller: phone,
                      hint: 'please enter you phone',
                      prefix: const Icon(
                        Icons.phone,
                        color: AppColors.textColor,
                      ),
                      textInputType: TextInputType.number,
                      validator: (value) {
                        return MyValidators.phoneValidator(value);
                      },
                    )),
                  ),
                  // 4
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 2, left: 2),
                    child: Form(
                        child: textFormField(
                      label: 'nationalId *',
                      controller: nationalId,
                      hint: 'please enter you nationalId',
                      prefix: const Icon(
                        Icons.confirmation_number_sharp,
                        color: AppColors.textColor,
                      ),
                      textInputType: TextInputType.number,
                      validator: (value) {
                        return MyValidators.nationalIdValidator(value);
                      },
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 2, left: 2),
                    child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Gender *',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: AppColors.textColor,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          enabledBorder:
                              border(color: AppColors.textColor, radius: 30),
                          focusedBorder: border(
                              color: AppColors.buttonColorGray, radius: 30),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                        ),
                        value: gender.text.isEmpty ? null : gender.text,
                        items: genderOptions.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            gender.text = newValue!;
                          });
                        },
                        validator: (value) {
                          return MyValidators.genderValidator(value: value);
                        }),
                  ),
                  // 5

                  const Padding(
                    padding: EdgeInsets.only(top: 8, right: 2, left: 2),
                    child: PasswordField(),
                  ),
                  // 6
                  Padding(
                    padding: const EdgeInsets.only(top: 8, right: 2, left: 2),
                    child: Form(
                        child: textFormField(
                      label: 'token *',
                      controller: token,
                      hint: 'please enter you token',
                      prefix: const Icon(
                        Icons.token,
                        color: AppColors.textColor,
                      ),
                      textInputType: TextInputType.name,
                      validator: (value) {
                        return MyValidators.tokenValidator(value);
                      },
                    )),
                  ),
                  // //6
                  if (state is Authloading)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return AppColors
                                    .textBlack; // Text color when pressed
                              }
                              return AppColors
                                  .buttonColorWhite; // Default text color
                            }),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.textColor)),
                        onPressed: () {
                          authCubit.getDataAuth(
                            name: name.text,
                            email: email.text,
                            phone: phone.text,
                            nationalId: nationalId.text,
                            gender: gender.text,
                            password: password.text,
                            token: token.text,
                          );
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Already have an account? Log in',
                          style: TextStyle(
                              color: AppColors.textColor,
                              decoration: TextDecoration.none)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
