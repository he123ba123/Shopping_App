import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:app3/profile_user/cubit/cubit/profile_user_cubit.dart';
import 'package:app3/profile_user/cubit/cubit/profile_user_state.dart';
import 'package:app3/profile_user/view/widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileUserCubit()..getProfileCubit(),
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
              "Profile User",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: AppColors.buttonColorWhite,
              ),
            ),
          ),
        ),
        body: BlocConsumer<ProfileUserCubit, ProfileUserState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is ProfileUserSuccess) {
              return profileWidget(
                user: state.profileUserData,
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
