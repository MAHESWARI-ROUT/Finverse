import 'dart:ui';

import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MainDrawer extends StatelessWidget {
   MainDrawer({super.key, required this.onSelectScreen});
  final void Function(String identifier) onSelectScreen;

  final List<Map<String, dynamic>> drawerItems = [
    {
      'title': 'Home Page',
      'icon': Icons.home_outlined,
      'route': '/', // or null if no navigation
    },
    {
      'title': 'Courses',
      'icon': Icons.book,
      'route': null,
    },
    {
      'title': 'Bookmarks',
      'icon': Icons.bookmark_border,
      'route': null,
    },
    {
      'title': 'Profile',
      'icon': Icons.account_circle_outlined,
      'route': '/profile',
    },
    {
      'title': 'Refer & Earn',
      'icon': Icons.attach_money,
      'route': '/refer',
    },
    {
      'title': 'Notification',
      'icon': Icons.notification_add_outlined,
      'route': null,
    },
    {
      'title': 'Help',
      'icon': Icons.help_outline_rounded,
      'route': null,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: DeviceUtilities.screenWidth(context) * 0.65,
      backgroundColor: const Color.fromARGB(100, 0, 0, 0),
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 42),
              IconButton(
                icon: const Icon(Icons.close, color: AppColors.mainColor,size: 26,),
                onPressed: () => Navigator.of(context).pop(),
                tooltip: 'Close Drawer',
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hey,',
                    style: Fonts.montserrat.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textBk,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Kavi!',
                      style: Fonts.montserratBold.copyWith(
                        fontSize: 24,
                        color: AppColors.mainColor,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.brightness_1, size: 8, color: AppColors.highlightColor),
                          SizedBox(width: 4),
                          Text(
                            'PRO',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: AppColors.highlightColor,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
              ...drawerItems.map((item) {
                return ListTile(
                  title: Text(
                    item['title'],
                    style: Fonts.montserratSemiBold.copyWith(
                      fontSize: 18,
                      color: AppColors.textBk,
                    ),
                  ),
                  leading: Icon(item['icon'], color: AppColors.textBk),
                  onTap: () {
                    Navigator.of(context).pop();

                    // Navigate to item's route, or to '/error' if route is null
                    final route = item['route'] ?? '/error';
                    Get.toNamed(route);
                  },
                );
              }).toList(),


              Spacer(),
              ListTile(
                title: Text(
                  'SignOut',
                  style: Fonts.montserratSemiBold.copyWith(
                    fontSize: 18,
                    color: AppColors.textBk,
                  ),
                ),
                leading: const Icon(Icons.logout, color: AppColors.textBk),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
