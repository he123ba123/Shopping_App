class profileUserModel {
  final String name;
  final String email;
  final String phone;
  final String nationalId;
  final String profileImage;

  profileUserModel(
      {required this.email,
      required this.name,
      required this.nationalId,
      required this.phone,
      required this.profileImage});

  factory profileUserModel.fromJson(Map<String, dynamic> jsonData) {
    return profileUserModel(
        name: jsonData["name"],
        email: jsonData["email"],
        phone: jsonData["phone"],
        nationalId: jsonData["nationalId"],
        profileImage: jsonData["profileImage"]);
  }
}

class profileModelUserData {

  final profileUserModel profileUserData;
  profileModelUserData({required this.profileUserData});
factory profileModelUserData.fromJson(Map<String, dynamic> jsonData){
  return profileModelUserData(profileUserData: profileUserModel.fromJson(jsonData["user"]));

}


  }
