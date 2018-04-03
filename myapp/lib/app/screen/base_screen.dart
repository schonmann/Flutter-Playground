import 'package:flutter/widgets.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key key, this.title}) : super(key: key);
  String title = "";
  @override
  BaseScreenState createState() => new BaseScreenState();
}

class BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return new Text("I'm " + widget.title);
  }
}