import 'package:flutter/material.dart';

class ExercisesModel {
  String? title;
  String? subTitle;
  IconData? icon;
  Color? color;
  ExercisesModel({
    required this.color,
    required this.title,
    required this.subTitle,
    required this.icon,
  });
}