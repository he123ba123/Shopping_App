import 'package:app3/home/profile_user/model/profile_user_model.dart';

sealed class ProfileUserState {}

final class ProfileUserInitial extends ProfileUserState {}

final class ProfileUserSuccess extends ProfileUserState {
  final profileModelUserData profileUserData;
  ProfileUserSuccess({required this.profileUserData});
}

final class ProfileUserLodding extends ProfileUserState {}
