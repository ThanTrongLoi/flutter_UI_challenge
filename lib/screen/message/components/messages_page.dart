import 'package:baitap_200lab/components/user_image_components.dart';
import 'package:baitap_200lab/components/user_image_status.dart';
import 'package:baitap_200lab/values/app_assets.dart';
import 'package:baitap_200lab/values/app_colors.dart';
import 'package:baitap_200lab/values/app_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  static List<String> nameOnl = [
    'Christopher',
    'Reese',
    'Jeffrey',
    'Laura',
    'Maldo'
  ];
  static List stt = [true, true, true, true, true];
  static List img = [
    'assets/images/av1.png',
    'assets/images/av2.png',
    'assets/images/av3.png',
    'assets/images/av4.png',
    'assets/images/av5.png'
  ];
  final List<DataModel> dataModel = List.generate(
      nameOnl.length,
      (index) => DataModel(
          image: img[index], status: stt[index], name: nameOnl[index]));

  static List<String> nameMess = [
    'Herman Pope',
    'Sue Caldwell',
    'Ada Reyes',
    'Hallie Sandoval',
    'Dean Warren',
    'Christopher',
    'Reese',
  ];
  static List imgMess = [
    'assets/images/ov1.png',
    'assets/images/ov2.png',
    'assets/images/ov3.png',
    'assets/images/ov4.png',
    'assets/images/ov5.png',
    'assets/images/av1.png',
    'assets/images/av2.png',
  ];
  static List<String> mess = [
    'Hey! How\'s it going?',
    'What kind of music do you like?',
    'Sounds good to me!',
    'Hi Tina. How\'s your night going?',
    'What did you do over the weekend?',
    'What kind of music do you like?',
    'What kind of music do you like?',
  ];
  static List<String> time = [
    '04:04AM',
    '08:58PM',
    '11:33PM',
    '06:58PM',
    '09:43PM',
    '06:58PM',
    '09:43PM'
  ];
  final List<DataMess> dataMess = List.generate(
      nameMess.length,
      (index) => DataMess(
          image: imgMess[index],
          name: nameMess[index],
          time: time[index],
          mess: mess[index]));

  @override
  Widget build(BuildContext context) {
    final _sizeScreen = MediaQuery.of(context).size;
    final _paddingScreen = MediaQuery.of(context).padding;
    final _bottom = _sizeScreen.height - _paddingScreen.bottom - _paddingScreen.top;
    final _right = _sizeScreen.width - _paddingScreen.right - _paddingScreen.left;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.primaryColor,
            // automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(AppAssets.plush),
              ),
            ],
            floating: false,
            expandedHeight: 130,
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: false,
              title: Text(
                'Messages',
                style: TextStyle(fontSize: 24),
              ),
              titlePadding: EdgeInsets.only(left: 15, bottom: 25),
            ),
            bottom: const PreferredSize(
              preferredSize: Size(double.infinity, 5),
              child: Divider(
                color: Colors.black,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              // color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataModel.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      UserImageComponents(
                        Index: 0,
                      ),
                      Positioned(
                        bottom: _bottom * 0.04,
                        right: _right * 0.02,
                        child: UserImageStatusComponents(types: 0, status: 'online', unreadCount: '',),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
          Divider(color: Colors.black,),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return SizedBox(
                // color: Colors.white,
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          UserImageComponents(
                            Index: 0,
                          ),
                          Positioned(
                            bottom: _bottom * 0.04,
                            right: _right * 0.04,
                            child: UserImageStatusComponents(types: 1, status: 'online', unreadCount: '3',),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                          decoration: const BoxDecoration(
                              // color: Colors.white,
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Colors.black))),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: Row(
                                  children: [
                                    Text(
                                      dataMess[index].name,
                                      style: const TextStyle(
                                          color: AppColors.textColor,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      dataMess[index].time,
                                      style: const TextStyle(
                                          color: AppColors.unselectedItem,
                                          fontSize: 13),
                                    )
                                  ],
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                )),
                                Expanded(
                                    child: Text(
                                  dataMess[index].mess,
                                  style: const TextStyle(
                                      color: AppColors.textColor, fontSize: 17),
                                ))
                              ],
                            ),
                          ),
                        ))
                  ],
                ));
          }, childCount: dataMess.length))
        ],
      ),
    );
  }
}
