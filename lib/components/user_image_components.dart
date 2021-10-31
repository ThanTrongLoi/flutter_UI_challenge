import 'package:baitap_200lab/components/user_image_status.dart';
import 'package:baitap_200lab/values/app_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class UserImageComponents extends StatelessWidget {
  final int Index;

  const UserImageComponents({Key? key, required this.Index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20, right: 8, top: 10, bottom: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: CachedNetworkImage(
              imageUrl:
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),

          ),
          Text(
            'abc',
            style: AppStyles.h3,
          ),
          // UserImageStatusComponents(),
        ],
      ),
    );
  }
}
