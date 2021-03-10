import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Circular Profile Avatar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // testing for child widget which is using FlutterLogo
              CircularProfileAvatar(
                null,
                borderColor: Colors.purpleAccent,
                borderWidth: 2,
                elevation: 5,
                radius: 50,
                cacheImage: true,
              ),
              CircularProfileAvatar(
                null,
                cacheImage: true,
                borderColor: Colors.black,
                borderWidth: 3,
                elevation: 5,
                radius: 75,
              ),
              CircularProfileAvatar(
//                  'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWtMDksH9GzFdMinyAkGbtLJNx6xynLETTNN5akjxirL3QD5Rj',
                radius: 90,
                backgroundColor: Colors.transparent,
                borderWidth: 10,
//                  initialsText: Text(
//                    "AD",
//                    style: TextStyle(fontSize: 40, color: Colors.white),
//                  ),
                borderColor: Colors.red,
                elevation: 5.0,
                onTap: () {
                  print('adil');
                },
                cacheImage: true,
                showInitialTextAbovePicture: false,
              ),
            ],
          ),
        ));
  }
}
