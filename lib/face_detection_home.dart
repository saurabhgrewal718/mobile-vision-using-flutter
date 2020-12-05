import "package:flutter/material.dart";
import 'dart:io';

class FaceDetectorHome extends StatefulWidget {
  @override
  _FaceDetectorHomeState createState() => _FaceDetectorHomeState();
}

class _FaceDetectorHomeState extends State<FaceDetectorHome> {
  File image;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Face Detection'),
        ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                buildRowTitle(context, 'Pick Image'),
                buildSelectImageRowWidget(context)
              ],
            )
        )
    );
  }

  
  Widget buildRowTitle(BuildContext context, String title) {
    return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline,
          ),
        )
    );
  }

  Widget buildSelectImageRowWidget(BuildContext context) {
    return Row(
      children: <Widget>[
        createButton('Camera'),
        createButton('Gallery')
      ],
    );
  }

  Widget createButton(String imgSource) {
    return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              splashColor: Colors.blueGrey,
              onPressed: () {
                null;
              },
              child: new Text(imgSource)),
        )
    );
  }
}