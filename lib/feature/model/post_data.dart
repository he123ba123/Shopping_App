
import 'package:app3/feature/model/post_model.dart';
import 'package:dio/dio.dart';

class PostDataCatogary {
  Dio dio = Dio();

  Future<List<PostModelCatogary>> getPostData({required String endpoints}) async {
    var response =
        await dio.get("https://fakestoreapi.com/products/category/$endpoints");
    if (response.statusCode == 200) {
      // print(response.data);
      List data = response.data;
      List<PostModelCatogary> listCatogary =
          data.map((item) => PostModelCatogary.fromJson(item)).toList();
      return listCatogary;
    } else {
      throw Exception("faluier");
    }
  }
}



//MVVM
// home => model , view , cubit 
// view => screen , widgets 
// 