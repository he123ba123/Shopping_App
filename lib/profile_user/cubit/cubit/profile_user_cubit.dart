import 'package:app3/profile_user/cubit/cubit/profile_user_state.dart';
import 'package:app3/profile_user/model/profile_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileUserCubit extends Cubit<ProfileUserState> {
  ProfileUserCubit() : super(ProfileUserInitial());
  profileDataUsser profileUSer=profileDataUsser();
  getProfileCubit() async {
    emit(ProfileUserLodding());
    var user = await profileDataUsser.getProfile();
    emit(ProfileUserSuccess (profileUserData: user));
  }
}
