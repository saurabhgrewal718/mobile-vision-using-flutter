import "package:flutter/material.dart";

class TryClass extends StatefulWidget {
  @override
  _TryClassState createState() => _TryClassState();
}

class _TryClassState extends State<TryClass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("this is a child class! i like"),
    );
  }
}