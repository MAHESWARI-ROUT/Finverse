import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/controllers/course_controller.dart';
import 'package:finverse/widgets/app_title.dart';
import 'package:finverse/widgets/chat_box.dart';
import 'package:finverse/widgets/comment_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../widgets/video_player.dart';

class LiveView extends StatefulWidget {
  const LiveView({super.key});

  @override
  State<LiveView> createState() => _LiveViewState();
}

class _LiveViewState extends State<LiveView> {
  bool _isExpanded = false;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Get.find<CourseController>().setSelectedIndex(0);
                  Get.back();
                },

                icon: Icon(Icons.arrow_back, color: AppColors.textW),
              ),
              Spacer(),
              AppTitle(),
              Spacer(),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CustomVideoPlayer(
                    videoUrl:
                        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.circle, size: 10, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          'LIVE',
                          style: Fonts.gilroySemiBold.copyWith(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            //title
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Start by Knowing all risk about different saving models.',
                    overflow: _isExpanded
                        ? TextOverflow.visible
                        : TextOverflow.ellipsis,
                    style: Fonts.gilroySemiBold.copyWith(
                      fontSize: 18,
                      color: AppColors.textBk,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    setState(() => _isExpanded = !_isExpanded);
                  },
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColors.texthint.shade400,
                    child: Icon(
                      _isExpanded
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),

            // Description (shown only when expanded)
            if (_isExpanded)
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'This is the full description that will be shown when expanded. You can add multiple lines here without truncation.',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),

            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: DeviceUtilities.screenHeight(context) * 0.025,
              ),
              child: Row(
                children: [
                  Icon(Icons.visibility, color: AppColors.blurText, size: 18),
                  SizedBox(width: 4), // space between icon & text
                  Text(
                    '19,23455 viewers',
                    style: Fonts.gilroy.copyWith(
                      fontSize: 12,
                      color: AppColors.textBk,
                    ),
                  ),
                  SizedBox(width: 16), // space between view & like section
                  Icon(Icons.favorite, color: AppColors.blurText, size: 18),
                  SizedBox(width: 4),
                  Text(
                    '47,987 likes',
                    style: Fonts.gilroy.copyWith(
                      fontSize: 12,
                      color: AppColors.textBk,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 5),
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Card(
                child: Center(
                  child: Text(
                    'Live Chat!',
                    style: Fonts.gilroySemiBold.copyWith(
                      fontSize: 18,
                      color: AppColors.textBk,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(child: CommentSection()),
          ],
        ),
      ),
      bottomNavigationBar: ChatBox(hinttext: 'Write your message'),
    );
  }
}
