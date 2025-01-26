class ModelAddCart {
  final String id;
  final String status;
  final String category;
  final num totalPrice;
  final String description;
  final String image;
  final String name;
  final num quantity;

  ModelAddCart({
    required this.id,
    required this.category,
    required this.description,
    required this.image,
    required this.totalPrice,
    required this.status,
    required this.name,
    required this.quantity,
  });

  factory ModelAddCart.fromJson(Map<String, dynamic> jsonData) {
    return ModelAddCart(
        name: jsonData["name"],
        id: jsonData["_id"],
        category: jsonData["category"],
        description: jsonData["description"],
        image: jsonData["image"],
        totalPrice: jsonData["totalPrice"],
        status: jsonData["status"],
        quantity: jsonData["quantity"]);
  }
}


// "company": "Dell",
//             "countInStock": 8,
//             "__v": 0,
//             "sales": 9
