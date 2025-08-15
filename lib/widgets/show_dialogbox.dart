import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/widgets/circular_container.dart';
import 'package:flutter/material.dart';

import 'dart:ui';

void showDialogbox(
  BuildContext context, {
  String title = "Title",
  String message = "Message",
  String confirmText = "OK",
  String cancelText = "cancel",
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.black.withValues(alpha: 0.2),
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          shadowColor: Colors.black,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  title,
                  style: Fonts.gilroyBold.copyWith(
                    fontSize: 14,
                    color: AppColors.highlightColor,
                  ),
                  
                ),
              ),
              SizedBox(height: 20),
              Text(
                message,
                style: Fonts.gilroySemiBold.copyWith(
                  fontSize: 14,
                  color: AppColors.textBk,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, 
                      minimumSize: Size.zero, 
                      tapTargetSize:
                          MaterialTapTargetSize.shrinkWrap, 
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      if (onConfirm != null) onConfirm();
                    },
                    child: Container(
                      width: 92,
                      height: 25,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        confirmText,
                        style: Fonts.gilroyBold.copyWith(
                          fontSize: 8,
                          color: AppColors.highlightColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero, 
                      tapTargetSize:
                          MaterialTapTargetSize.shrinkWrap, 
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      if (onCancel != null) onCancel();
                    },
                    child: Container(
                      
                      width: 92,
                      height: 25,
                      decoration: BoxDecoration(
                        color: AppColors.texthint,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        cancelText,
                        style: Fonts.gilroyBold.copyWith(
                          fontSize: 8,
                          color: AppColors.highlightColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Text(
                'Don’t worry, you can resume it later as well',
                style: Fonts.gilroyBold.copyWith(
                  fontSize: 8,
                  color: AppColors.blurText,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
