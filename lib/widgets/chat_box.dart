import 'package:finverse/common/app_colors.dart';
import 'package:finverse/widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ChatBox extends GetView {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: BoxBorder.all(color: AppColors.textBk),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  
                  hintText: 'post your thread',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send, color: AppColors.mainColor),
            ),
          ],
        ),
      ),
    );
  }
}
