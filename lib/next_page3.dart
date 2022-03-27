import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NextPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test3"),
        ),
        body: Center(
            child: TextButton(
                onPressed: () => {Navigator.of(context).pop()},
                child: Text("戻る", style: TextStyle(fontSize: 80))
            )
        )
    );
  }
}