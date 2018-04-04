import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/app/screen/base_screen.dart';
import 'package:myapp/app/screen/home_screen.dart';
import 'package:myapp/app/screen/input_screen.dart';

class MainWidget extends StatefulWidget {
  MainWidget({Key key}) : super(key: key);

  @override
  MainWidgetState createState() => new MainWidgetState();
}

class MainWidgetState extends State<MainWidget> {
  /* Screens */

  final BaseScreen homeScreen = new HomeScreen();
  final BaseScreen inputScreen = new InputScreen();

  /* Current selected drawer tab. */

  BaseScreen _currentScreen = new HomeScreen();

  /* Set current screen and notify flutter to rebuild widgets. */

  void _setCurrentScreen(BaseScreen screen) {
    setState(() {
      this._currentScreen = screen;
    });

    /* Closing drawer */

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_currentScreen.title),
      ),
      drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new DrawerHeader(child: new Text("Options")),
              new ListTile (title: new Text(homeScreen.title), onTap: () => _setCurrentScreen(homeScreen)),
              new ListTile (title: new Text(inputScreen.title), onTap: () => _setCurrentScreen(inputScreen)),
              new ListTile(
                title: new Text("About"),
                onTap: () {},
              )
            ],
          )
      ),
      body: new Center(
        child: _currentScreen,
      )
    );
  }
}
