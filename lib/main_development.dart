import 'package:doc_app/core/di/service_locator.dart';
import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  setupServiceLocator();
  await ScreenUtil.ensureScreenSize();
  runApp(const DocApp());
}
