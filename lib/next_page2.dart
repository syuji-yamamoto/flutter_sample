import 'package:flutter/material.dart';
import 'package:nest_page3.dart';
import 'package:url_launcher/url_launcher.dart';

class NextPage2 extends StatelessWidget {
  @override
  // 利用例
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
        body: Center(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return TestPage3();
                    }))
                  },
                  child: Text("進む", style: TextStyle(fontSize: 80)
                  )
              ),
              TextButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  child: Text("戻る", style: TextStyle(fontSize: 80)
                  )
              ),
            ])
        )
    );
  }
}