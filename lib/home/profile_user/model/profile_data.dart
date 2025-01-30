import 'package:app3/core/style/value_id.dart';
import 'package:app3/home/profile_user/model/profile_user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';



class profileDataUsser {
  static Dio dio = Dio();

  static getProfile() async {
    var response = await dio.post("https://elwekala.onrender.com/user/profile",
        data: {"token":getToken});

    try {
      var repoData = response.data;
      var user = profileModelUserData.fromJson(repoData);
      if (kDebugMode) {
        print(user.profileUserData.name);
      }
      return user;
    } on DioException catch (error) {
      if (error.response != null) {
        return error.response != null;
      }
    }
  }
}
