import 'package:app3/home_lab_catogry/model/data/model_catogery.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LapData {
  final Dio dio = Dio();
  getAllLap() async {
    var response =
        await dio.get("https://elwekala.onrender.com/product/Laptops");
    try {
      if (response.statusCode == 200) {
        List repoData = response.data["product"];
        List<ModelDataCatogery> listLab = repoData
            .map(
              (e) => ModelDataCatogery.fromJson(e),
            )
            .toList();
        // print(listLab[1].image);
        //  print(listLab[4].image);
        return listLab;
      }
    } on DioException catch (error) {
      if (error.response != null) {
        if (kDebugMode) {
          print(error.response!.data);
        }
        return error.response!.data;
      }
    }
  }
}
