import 'package:doc_app/core/di/service_locator.dart';
import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();
  runApp(const DocApp());
}
