import 'package:app3/core/style/value_id.dart';
import 'package:app3/core/style/value_token.dart';
import 'package:app3/cart/cart_add/model/addCartShowModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class CartCat {
  final Dio dio = Dio();

  addCart({required String id}) async {
    var response = await dio.post("https://elwekala.onrender.com/cart/add",
        data: {"nationalId": getId, "productId": id, "quantity": "1"});

    var data = response.data;
    print("------------------------------------------------");
    print(data);
    return data;
  }

  getData() async {
    var response =
        await dio.get("https://elwekala.onrender.com/cart/allProducts", data: {
      "nationalId": getId,
    });

    try {
      if (response.statusCode == 200) {
        List dataRepo = response.data["products"];
        List<ModelAddCart> listCart = dataRepo
            .map(
              (e) => ModelAddCart.fromJson(e),
            )
            .toList();
        print(
            "************************************************************************");
        print(listCart[2].image);
        print(listCart[2].image);
        return listCart;
      }
    } on DioException catch (error) {
      if (kDebugMode) {
        print(error.response!.data);
      }
      return error.response!.data;
    }
  }

  deleteCart({required String ProductId}) async {
    var response = await dio.delete("https://elwekala.onrender.com/cart/delete",
        data: {"nationalId": getId, "productId": ProductId, "quantity": "1"});

    var data = response.data;
    return data;
  }
}
