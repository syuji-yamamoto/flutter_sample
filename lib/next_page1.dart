import 'package:flutter/material.dart';
import 'package:nest_page2.dart';

class NextPage1 extends StatelessWidget {
  @override
  // 利用例
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: IconButton(
            icon: Icon(Icons.open_in_browser),
            onPressed: () async {
              String url = Uri.encodeFull("https://www.google.co.jp");
              if (await canLaunch(url)) {
                await launch(url);
              }
            }),
      ),
    );
  }
}