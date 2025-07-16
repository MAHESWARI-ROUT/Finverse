import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key, required this.onSelectScreen});
  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: DeviceUtilities.screenWidth(context) * 0.65,
      backgroundColor: const Color.fromARGB(100, 0, 0, 0),
      child: Column(
        children: [
          SizedBox(height: 120),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Hey,',
                style: Fonts.montserrat.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Kavi!',
                style: Fonts.montserratBold.copyWith(
                  fontSize: 24,
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(right: 40, left: 15),
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(20),
              value: 3 / 5,
              color: AppColors.mainColor,
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            title: Text(
              'Home Page',
              style: Fonts.montserratSemiBold.copyWith(fontSize: 18),
            ),
            leading: const Icon(Icons.home_filled, color: AppColors.textBk),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Courses',
              style: Fonts.montserratSemiBold.copyWith(fontSize: 18),
            ),
            leading: const Icon(
              Icons.menu_book_outlined,
              color: AppColors.textBk,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Bookmarks',
              style: Fonts.montserratSemiBold.copyWith(fontSize: 18),
            ),
            leading: const Icon(Icons.bookmark_border, color: AppColors.textBk),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Profile',
              style: Fonts.montserratSemiBold.copyWith(fontSize: 18),
            ),
            leading: const Icon(
              Icons.account_circle_outlined,
              color: AppColors.textBk,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Refer & Earn',
              style: Fonts.montserratSemiBold.copyWith(fontSize: 18),
            ),
            leading: const Icon(Icons.attach_money, color: AppColors.textBk),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Notification',
              style: Fonts.montserratSemiBold.copyWith(fontSize: 18),
            ),
            leading: const Icon(
              Icons.notification_add,
              color: AppColors.textBk,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'help',
              style: Fonts.montserratSemiBold.copyWith(fontSize: 18),
            ),
            leading: const Icon(Icons.help, color: AppColors.textBk),
            onTap: () {},
          ),
          Spacer(),
          ListTile(
            title: Text(
              'SignOut',
              style: Fonts.montserratSemiBold.copyWith(fontSize: 18),
            ),
            leading: const Icon(Icons.logout, color: AppColors.textBk),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
