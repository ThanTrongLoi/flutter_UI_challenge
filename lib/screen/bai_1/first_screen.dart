import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _sizeScreen = MediaQuery.of(context).size;
    final _paddingScreen = MediaQuery.of(context).padding;

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Expanded(flex: 2, child: Row(
                          children: [
                            Expanded(child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    color: Colors.grey,
                                  )
                                ),
                                Expanded(
                                    child: Container(
                                      color: Colors.orange,
                                    )
                                ),
                                Expanded(
                                    child: Container(
                                      color: Colors.blue,
                                    )
                                ),
                                Expanded(
                                    child: Container(
                                      color: Colors.pink,
                                    )
                                ),
                              ],
                            )),
                            Expanded(flex:2,child: Column(
                              children: [
                                Expanded(flex: 3,child: Container(color: Colors.lightBlue,)),
                                Expanded(child: Row(children: [
                                  Expanded(
                                    child: Container(color: Colors.greenAccent),
                                  ),
                                  Expanded(child: Container(color: Colors.yellow,))
                                ],))
                              ],
                            ))
                          ],
                        )),
                        Expanded(flex:3, child: Container(color: Colors.black,),),
                        Expanded(flex:3, child: Container(color: Colors.yellow,)),
                        Spacer(flex: 3,)
                      ],
                    )),
                Expanded(
                    flex: 4,
                    child: Container(
                        color: Colors.pink,
                        margin: const EdgeInsets.only(right: 5))),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.pink,
                      margin: const EdgeInsets.only(left: 5),
                    ))
              ],
            ),
          ),
          Positioned(
            width: _sizeScreen.width * 0.25,
            height: _sizeScreen.width * 0.25,
            left: (_sizeScreen.width - _paddingScreen.left - _paddingScreen.right) * 0.2,
            bottom: (_sizeScreen.height - _paddingScreen.bottom - _paddingScreen.top) * 0.3,
            child: Container(
              alignment: Alignment.center,
              color:Colors.black.withOpacity(0.3)
            ),
          )
        ],
      ),
    );
  }
}
