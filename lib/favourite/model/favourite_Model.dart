class FavModel {

  
  final num price;
  final String id;
  final String image;
  final String name;
 

  FavModel({
 
    required this.id,
    required this.image,
     required this.price,
    required this.name,
  });

  factory FavModel.fromJson(Map<String, dynamic> jsonData) {
    return FavModel(
        name: jsonData["name"],
        id: jsonData["_id"],
        image: jsonData["image"],
         price: jsonData["price"],
      );
  }
}


// "company": "Dell",
//             "countInStock": 8,
//             "__v": 0,
//             "sales": 9
