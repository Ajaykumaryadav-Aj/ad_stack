
import 'package:ad_stack/model/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = <MenuModel>[
    MenuModel(icon: Icons.home, title: "Home"),
    MenuModel(icon: Icons.people_sharp, title: "Employees"),
    MenuModel(icon: Icons.format_align_justify_outlined, title: "Attendance"),
    MenuModel(icon: Icons.calendar_month, title: "Summary"),
    MenuModel(icon: Icons.timelapse, title: "Information"),
  ];
}
