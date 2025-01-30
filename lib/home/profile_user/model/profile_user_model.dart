import 'package:flutter/foundation.dart';

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

// ignore: camel_case_types
class profileModelUserData {
  final profileUserModel profileUserData;

  profileModelUserData({required this.profileUserData});

  factory profileModelUserData.fromJson(Map<String, dynamic> jsonData) {
    if (kDebugMode) {
      print("Received JSON data: $jsonData");
    }

    if (jsonData['user'] == null) {
      throw Exception('User data is missing or null');
    }

    try {
      return profileModelUserData(
        profileUserData: profileUserModel.fromJson(jsonData['user']),
      );
    } catch (e) {
      throw Exception('Error parsing user data: $e');
    }
  }
}

// class profileModelUserData {
//   final profileUserModel profileUserData;
//   profileModelUserData({required this.profileUserData});
//   factory profileModelUserData.fromJson(Map<String, dynamic> jsonData) {
//     if (jsonData['user'] == null) {
//       throw Exception('User data is missing');
//     }

//     try {
//       return profileModelUserData(
//           profileUserData: profileUserModel.fromJson(jsonData["user"]));
//     } catch (e) {
//       throw Exception('Error paresing user data : $e');
//     }
//   }
// }
