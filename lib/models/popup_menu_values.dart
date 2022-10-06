import 'package:flutter/material.dart';
import 'package:repost_instagram/utils/app_colors.dart';

class MenuDataItem {
  String value;
  IconData icon ;
  Color iconColor;
  MenuDataItem(this.value, this.icon,this.iconColor);
}

List<MenuDataItem> getData(){
  List<MenuDataItem> list = [];
  list.add(MenuDataItem("Mark as Reposted", Icons.check_circle,AppColors.primaryColor2));
  list.add(MenuDataItem("Delete Post", Icons.delete,Colors.red));
  return list;
}