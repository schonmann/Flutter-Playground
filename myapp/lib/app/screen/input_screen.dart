import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/app/screen/base_screen.dart';

class InputScreen extends BaseScreen {
  InputScreen({Key key}) : super(key: key, title: "Input");
  @override
  _InputScreenState createState() => new _InputScreenState();
}

class _InputScreenState extends BaseScreenState {
  String _text = "";

  final TextEditingController _controller = new TextEditingController();

  void onTextChanged() => setState(() => _text = _controller.text);

  @override
  void dispose() {
    _controller.removeListener(onTextChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.addListener(this.onTextChanged);
    return new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new Column(
          children: <Center>[
            new Center(
              child: new TextField(
                controller: this._controller,
                decoration: new InputDecoration(
                  hintText: 'Your name! :)',
                ),
              ),
            ),
            new Center(
                child: new Text(
                    "$_text"
                )
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      );
  }
}