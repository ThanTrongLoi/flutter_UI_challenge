import 'package:baitap_200lab/values/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserImageStatusComponents extends StatelessWidget {
  final String unreadCount;
  final String status;
  final int types;

  const UserImageStatusComponents({
    Key? key,
    required this.unreadCount,
    required this.status,
    required this.types,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return types == 0
        ? dotOnline()
        : dotUnreadCount(unreadCount);
  }
  Widget dotOnline(){
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
          color: AppColors.statusOnl,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(width: 2, color: Colors.white)),
    );
  }

  Widget dotUnreadCount(String unreadCount){
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                AppColors.messNumTopRight,
                AppColors.messNumBottomLeft,
              ],
              stops: [
                0.0,
                1
              ],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft,
              tileMode: TileMode.repeated),
          borderRadius: BorderRadius.circular(9),
          border: Border.all(width: 1, color: Colors.white)),
      child:Text(
        unreadCount,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 13, color: AppColors.textColor),
      ),
    );
  }


}
