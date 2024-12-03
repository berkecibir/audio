import 'package:audio/app/data/models/user_profile_model/user_profile_model.dart';
import 'package:audio/app/data/repository/audio_repository.dart';
import 'package:flutter/material.dart';

class UserProfileViewModel extends ChangeNotifier {
  var audioRepo = AudioRepository();
  UserProfileModel? userProfile;

  final List<Map<String, dynamic>> settings = [
    {'title': 'Edit Profile', 'icon': Icons.edit},
    {'title': 'Notifications', 'icon': Icons.notifications},
    {'title': 'Wishlist', 'icon': Icons.favorite},
    {'title': 'Terms of Use', 'icon': Icons.article},
    {'title': 'Privacy Policy', 'icon': Icons.lock},
    {'title': 'Report a Bug', 'icon': Icons.bug_report},
    {'title': 'Logout', 'icon': Icons.logout},
  ];

  UserProfileViewModel() {
    catchUserProfile();
  }

  void catchUserProfile() {
    userProfile = audioRepo.getProfilData().firstOrNull;
    notifyListeners();
  }

  void logout(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'SignInPage');
  }
}
