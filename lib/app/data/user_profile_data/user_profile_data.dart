import 'package:audio/app/data/models/user_profile_model/user_profile_model.dart';

class UserProfileData {
  final UserProfileModel userProfile = UserProfileModel(
    userName: 'Berke Atahan',
    userMail: 'berke@gmail.com',
    imageUrl: 'https://via.placeholder.com/150',
  );

  UserProfileModel getUserProfile() {
    return userProfile;
  }
}

/* import 'package:audio/app/data/models/user_profile_model/user_profile_model.dart';
import 'package:flutter/material.dart';

class UserProfileData {
  // profil iconları ve titleları
  final List<Map<String, dynamic>> settings = [
    {'title': 'Edit Profile', 'icon': Icons.edit},
    {'title': 'Notifications', 'icon': Icons.notifications},
    {'title': 'Wishlist', 'icon': Icons.favorite},
    {'title': 'Terms of Use', 'icon': Icons.article},
    {'title': 'Privacy Policy', 'icon': Icons.lock},
    {'title': 'Report a Bug', 'icon': Icons.bug_report},
    {'title': 'Logout', 'icon': Icons.logout},
  ];

  // kullanıcı adını mailini ve resmini tutuyor
  final UserProfileModel userProfile = UserProfileModel(
    userName: 'Berke Atahan',
    userMail: 'berke@gmail.com',
    imageUrl: 'https://via.placeholder.com/150',
  );

  void logout(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'SignInPage');
  }

  // profil iconları ve titleları getiren fonksiyon
  List<Map<String, dynamic>> getProfileIcon() {
    return settings;
  }

  List<UserProfileModel> getUserProfile() {
    return [userProfile];
  }

  /*   UserProfileModel getUserProfile() {
    return userProfile;
  } */
}

 */