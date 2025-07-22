
import 'package:doc_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
     this.backgroundColor,
    required this.child,
    required this.onPressed, this.height, this.width,
  });
  final Color? backgroundColor;
  final Widget child;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height?? 52.h,
      width:width?? double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor:backgroundColor?? AppColors.primary100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
