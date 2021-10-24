import 'package:baitap_200lab/values/app_assets.dart';
import 'package:baitap_200lab/values/app_colors.dart';
import 'package:baitap_200lab/values/app_data.dart';
import 'package:baitap_200lab/values/app_styles.dart';
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
    '04:04AM','08:58PM','11:33PM','06:58PM','09:43PM','06:58PM','09:43PM'
  ];
  final List<DataMess> dataMess = List.generate(
      nameMess.length,
          (index) => DataMess(
          image: imgMess[index], name: nameMess[index], time: time[index], mess: mess[index]));
  @override
  Widget build(BuildContext context) {
    final _sizeScreen = MediaQuery.of(context).size;
    final _paddingScreen = MediaQuery.of(context).padding;
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
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, 5),
              child: Divider(
                color: Colors.black,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              // color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataModel.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 8, top: 10, bottom: 10),
                        child: Stack(
                          children: [
                            Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage(dataModel[index].image)
                                        // image: NetworkImage(
                                        //     'https://1.bp.blogspot.com/-Twt6J8icdmk/YDSkU71UcxI/AAAAAAAA8aU/tKvGodWcVwEY2YAampaCVDWgigDCS-OFQCLcBGAsYHQ/s0/Hinh-nen-iphone-cute%2B%25281%2529.jpg')
                                        ))),
                            dataModel[index].status
                                ? Positioned(
                                    bottom: 3,
                                    right: 3,
                                    child: Container(
                                      width: 14,
                                      height: 14,
                                      decoration: BoxDecoration(
                                          color: AppColors.statusOnl,
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          border: Border.all(
                                              width: 2, color: Colors.white)),
                                    ))
                                : SizedBox.shrink()
                          ],
                        ),
                      ),
                      Container(
                          child: Text(
                        dataModel[index].name,
                        style: AppStyles.h3,
                      ))
                    ],
                  );
                },
              ),
            ),
          ),
          // Divider(color: Colors.black,),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
                // color: Colors.white,
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Stack(
                          children: [
                            Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    // color: Colors.red,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(dataMess[index].image)))),
                            Positioned(
                                bottom: 0,
                                right: 4,
                                child: Container(
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
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
                                      border: Border.all(
                                          width: 1, color: Colors.white)),
                                  child: Text(
                                    '3',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: AppColors.textColor),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
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
                                      style: TextStyle(
                                          color: AppColors.textColor,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      dataMess[index].time,
                                      style: TextStyle(
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
                                  style: TextStyle(
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
