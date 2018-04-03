import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/app/main_widget.dart';

class PlaygroundApp extends StatelessWidget {
  const PlaygroundApp({Key key}) : super(key: key);

  final String appTitle = 'Flutter Playground!';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: this.appTitle,
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new MainWidget(),
    );
  }
}