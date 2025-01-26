import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:app3/profile_user/model/profile_user_model.dart';
import 'package:flutter/material.dart';

class profileWidget extends StatelessWidget {
  const profileWidget({super.key, required this.user});
  final profileModelUserData user;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(user.profileUserData.profileImage)),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ListTile(
                    title: Text(
                      user.profileUserData.name,
                      style: const TextStyle(
                        fontSize: 23,
                        color: AppColors.textBlack,
                      ),
                    ),
                    leading: const Icon(
                      Icons.person,
                      color: AppColors.textColor,
                      size: 50,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ListTile(
                    title: Text(
                      user.profileUserData.email,
                      style: const TextStyle(
                        fontSize: 23,
                        color: AppColors.textBlack,
                      ),
                    ),
                    leading: const Icon(
                      Icons.email,
                      color: AppColors.textColor,
                      size: 50,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ListTile(
                    title: Text(
                      user.profileUserData.nationalId,
                      style: const TextStyle(
                        fontSize: 23,
                        color: AppColors.textBlack,
                      ),
                    ),
                    leading: const Icon(
                      Icons.badge,
                      color: AppColors.textColor,
                      size: 50,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ListTile(
                    title: Text(
                      user.profileUserData.phone,
                      style: const TextStyle(
                        fontSize: 23,
                        color: AppColors.textBlack,
                      ),
                    ),
                    leading: const Icon(
                      Icons.phone,
                      color: AppColors.textColor,
                      size: 50,
                    ),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
