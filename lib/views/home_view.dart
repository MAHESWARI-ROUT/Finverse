import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/models/app_title.dart';
import 'package:finverse/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'categories') {
      await Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (ctx) => const HomeView()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: DeviceUtilities.screenHeight(context) * 0.15,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.display1,
                  AppColors.display2,
                  // AppColors.display3,
                ],
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Builder(
                  builder: (context) => Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      color: AppColors.highlightColor,
                      icon: Icon(Icons.menu),
                    ),
                  ),
                ),
                Spacer(),
                AppTitle(),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
    );
  }
}
