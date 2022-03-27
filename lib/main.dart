import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Sample'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NextPage1());
  }
}

/// NextPage1 クラス
class NextPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page1'),
      ),
        body: Center(
            child: TextButton(
                onPressed: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return NextPage2();
                  }))
                },
                child: Text("進む", style: TextStyle(fontSize: 80)
                )
            )
        )
    );
  }
}

/// NextPage2 クラス
class NextPage2 extends StatelessWidget {
  @override
  // 利用例
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Next Page2'),
        ),
        body: Center(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                  onPressed: () =>
                  {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NextPage3();
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

/// NextPage3 クラス
class NextPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NextPage3"),
        ),
        body: Center(
          child: IconButton(
              icon: Icon(Icons.open_in_browser),
              onPressed: () async {
                const url = "https://www.google.co.jp";
                if (await canLaunch(url)) {
                  await launch(url);
                }
              }),
        ),
    );
  }
}
