import 'package:dio/dio.dart';

class AuthData {
  Dio dio = Dio();
  postData(
      {required name,
      required email,
      required phone,
      required nationalId,
      required gender,
      required password,
      required token,
      required profileImage}) async {
    var repo =
        await dio.post("https://elwekala.onrender.com/user/register", data: {
      "name": name,
      "email": email,
      "phone": phone,
      "nationalId": nationalId,
      "gender": gender,
      "password": password,
      "token": token,
      "profileImage": profileImage,
    });
    try {
      var data = repo.data;
      print(repo.statusCode);
      print(data["message"]);
      return data;
    } on DioException catch (error) {
      if (error.response != null) {
        print(error.response!.data["message"]);
        return error.response!.data;
      }
    }
  }
}
