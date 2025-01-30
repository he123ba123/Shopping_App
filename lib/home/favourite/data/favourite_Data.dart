import 'package:app3/home/favourite/model/favourite_Model.dart';
import 'package:dio/dio.dart';

class FavData {
  static final Dio dio = Dio(
      //   BaseOptions(
      //   contentType: Headers.jsonContentType,
      // )
      );

  addFav({required String productId}) async {
    var response = await dio.post("https://elwekala.onrender.com/favorite",
        data: {"nationalId": "01056710052789", "productId": productId});

    var responseData = response.data;
    print(responseData);
    return responseData;
  }

  static getAllFav() async {
    var response =
        await dio.get("https://elwekala.onrender.com/favorite", data: {
      "nationalId": "01056710052789",
    });
    try {
      List resopnseData = response.data["favoriteProducts"];
      List<FavModel> list =
          resopnseData.map((e) => FavModel.fromJson(e)).toList();
      print(list[1].image);
      return list;
    } on DioException catch (error) {
      if (error.response != null) {
        print(error.response!.data);
        return error.response!.data;
      }
    }
  }

  delete({required String productId}) async {
    var response = await dio.delete("https://elwekala.onrender.com/favorite",
        data: {"nationalId": "01056710052789", "productId": productId});
    try {
      var responseData = response.data;
      print(responseData);
      return responseData;
    } on DioException catch (error) {
      if (error.response != null) {
        print(error.response!.data);
        return error.response!.data;
      }
    }
  }
  update({required String productId, required String quantity}) async {
      var response = await dio.put("https://elwekala.onrender.com/cart",
        data: {"nationalId":  "01056710052789", "productId": productId, "quantity":quantity});
    try {
      var responseData = response.data;
      print(responseData);
      return responseData;
    } on DioException catch (error) {
      if (error.response != null) {
        print(error.response!.data);
        return error.response!.data;
      }
    }
  }
}
