import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/widgets/app_title.dart';
import 'package:finverse/widgets/carousel_bannerslider.dart';
import 'package:finverse/widgets/courses_list.dart';
import 'package:finverse/widgets/custom_card.dart';
import 'package:finverse/widgets/home_searchbar.dart';
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          DeviceUtilities.screenHeight(context) * 0.15,
        ),
        child: Container(
          width: double.infinity,
          height: DeviceUtilities.screenHeight(context) * 0.15,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.display1, AppColors.display2],
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
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: DeviceUtilities.screenHeight(context) * 0.03),
            HomeSearchbar(height: 60),
            CarouselBannerslider(banner: ['assets/images/b-1.png']),
            SizedBox(height: DeviceUtilities.screenHeight(context) * 0.01),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Choose your Course',
                  style: Fonts.gilroySemiBold.copyWith(
                    fontSize: 22,
                    color: AppColors.textBk,
                  ),
                ),
              ),
            ),
            CoursesList(),
            SizedBox(height: DeviceUtilities.screenHeight(context) * 0.01),
            CustomCard(),
          ],
        ),
      ),
    );
  }
}
