class ModelDataCatogery {
  final String id;
  final String status;
  final String category;
  final num price;
  final String description;
  final String image;
  final String name;

  ModelDataCatogery( 
      {required this.id,
      required this.category,
      required this.description,
      required this.image,
      required this.price,
      required this.status, required this.name});

  factory ModelDataCatogery.fromJson(Map<String, dynamic> jsonData) {
    return ModelDataCatogery(
      name: jsonData["name"],
        id: jsonData["_id"],
        category: jsonData["category"],
        description: jsonData["description"],
        image: jsonData["image"],
        price: jsonData["price"],
        status: jsonData["status"]);
  }
}




// "_id": "64666d3a91c71d884185b774",
// "status": "New",
// "category": "Laptops",
// "name": " Dell XPS 13",
// "price": 30.819,
// "description": "The Dell XPS 13 is a sleek and powerful laptop designed for productivity and portability. It features an 11th Generation Intel Core processor, a 13.3-inch Full HD display, and up to 16GB of RAM, making it a great choice for anyone who needs a reliable laptop on the go.",
// "image": "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
// "images": [
// "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434230/hsincqjvphkmfbrcoc2b.png",
// "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434232/ks4tuogejkow8dxw2jdw.png",
// "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434234/rjixaryvwv2pykiolblg.png"
// ],
// "company": "Dell",
// "countInStock": 8,
// "__v": 0,
// "sales": 9