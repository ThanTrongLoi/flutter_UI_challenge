import 'dart:ui';

import 'package:baitap_200lab/screen/message/components/messages_page.dart';
import 'package:baitap_200lab/values/app_assets.dart';
import 'package:baitap_200lab/values/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenPageState createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreen> {
  int _currentIndex = 0;

  final List <Widget> tabs = [
    const Center(child: Text('Home')),
    const Center(child: Text('Streams')),
    const MessagesPage(),
    const Center(child: Text('Notifications')),
    const Center(child: Text('Profiles')),
  ];

  final List<dynamic> bottoms = [
    {
      'label':'Home',
      'color': Colors.blue
    },
    {
      'label':'Streams',
      'color': Colors.blue
    },
    {
      'label':'Messages',
      'color': Colors.blue
    },
    {
      'label':'Notifications',
      'color': Colors.blue
    },
    {
      'label':'Profiles',
      'color': Colors.blue
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColors.primaryColor,
      //   elevation: 0,
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Image.asset(AppAssets.plush))
      //   ],
      // ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColor,
        selectedFontSize: 10,
        selectedItemColor: AppColors.activeIcon,
        unselectedItemColor: AppColors.unselectedItem,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.bt_home),
                color: _currentIndex == 0
                    ? AppColors.activeIcon
                    : AppColors.unselectedItem),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.bt_stream),
                color: _currentIndex == 1
                    ? AppColors.activeIcon
                    : AppColors.unselectedItem),
            label: 'Streams',
            // backgroundColor: AppColors.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.bt_mess),
                color: _currentIndex == 2
                    ? AppColors.activeIcon
                    : AppColors.unselectedItem),
            label: 'Messages',
            // backgroundColor: AppColors.primaryColor,
            // activeIcon: AppColors.activeIcon,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.bt_noti),
                color: _currentIndex == 3
                    ? AppColors.activeIcon
                    : AppColors.unselectedItem),
            label: 'Notifications',
            // backgroundColor: AppColors.primaryColor
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.bt_prof),
              color: _currentIndex == 4
                  ? AppColors.activeIcon
                  : AppColors.unselectedItem,
            ),
            label: 'Profiles',
            // backgroundColor: AppColors.primaryColor
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
