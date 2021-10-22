import 'package:baitap_200lab/screen/bai_3/all_components_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Widgets'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'HomePage',
                  style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const AllComponentsPage()));},
                  child: Text(
                    'All Components Page',
                    style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
