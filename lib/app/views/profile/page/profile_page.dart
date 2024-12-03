import 'package:audio/app/core/configs/assets/app_vectors.dart';
import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/widgets/device_padding/device_padding.dart';
import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:audio/app/providers/user_profile_view_model/user_profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  static const String id = 'Profile';

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profileViewModel = Provider.of<UserProfileViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: SvgPicture.asset(AppVectors.backIcon),
          onPressed: () {
            Navigation.ofPop();
          },
        ),
      ),
      body: profileViewModel.userProfile == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: DevicePadding.medium.onlyHorizontal,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage(profileViewModel.userProfile!.imageUrl),
                    ),
                    title: Text(
                      profileViewModel.userProfile!.userName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(profileViewModel.userProfile!.userMail),
                  ),
                ),
                const Divider(color: AppColors.grey),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider(color: AppColors.grey);
                    },
                    itemCount: profileViewModel.settings.length,
                    itemBuilder: (context, index) {
                      final item = profileViewModel.settings[index];
                      return ListTile(
                        leading: Icon(item['icon']),
                        title: Text(item['title']),
                        onTap: () {
                          if (item['title'] == 'Logout') {
                            profileViewModel.logout(context);
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
