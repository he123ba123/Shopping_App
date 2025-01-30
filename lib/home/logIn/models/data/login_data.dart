import 'package:app3/core/helder/cash.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginDataTest {
  final Dio dio = Dio();

  LoginDataTest();

  Future<dynamic> login({required email, required password}) async {
    var response = await dio.post(
      "https://elwekala.onrender.com/user/login",
      data: {"email": email, "password": password},
    );
    try {
      var user = response.data;

      
      var NID = user["user"]["nationalId"];
      await CashShared.shared!.setString("ID", NID);
      var Token= user["user"]["token"];
       await CashShared.shared!.setString("token", Token);
      return user;
    } on DioException catch (error) {
      if (error.response != null) {
        if (kDebugMode) {
          print(error.response!.data);
        }
        return error.response!.data;
      } else {
        return 'Error: ${error.message}';
      }
    }
  }
}

class CashToken {
  static SharedPreferences? shared;
  static init() async {
    shared = await SharedPreferences.getInstance();
  }
}


// var nid=data["user"] ["nationalId"];



// class LoginDataTest {
//   final Dio dio = Dio();
//   LoginDataTest({required email, required password}) async {
//     var response = await dio.post("https://elwekala.onrender.com/user/login",
//         data: {"email": email, "password": password});
//     try {
//       var user = response.data;
//       return user;
//     } on DioException catch (error) {
//       if (error.response != null) {
//         if (kDebugMode) {
//           print(error.response!.data);
//         }
//         return error.response!.data;
//       }
//     }
//   }
// }
