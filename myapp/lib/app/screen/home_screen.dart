import 'package:flutter/widgets.dart';
import 'package:myapp/app/screen/base_screen.dart';

class HomeScreen extends BaseScreen {
  HomeScreen({Key key}) : super(key: key, title: "Home");
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends BaseScreenState {
  @override
  Widget build(BuildContext context) {
    return new Text("I'm " + widget.title);
//    return new Padding(
//      child: new Column(
//        children: <Center>[
//          new Center(
//            child: new Text(
//              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
//                  "Phasellus tincidunt orci et lacus hendrerit, a congue "
//                  "justo eleifend. Etiam quis diam eu leo dignissim ullamcorper. "
//                  "Morbi vel laoreet augue. Aenean congue, leo in finibus pellentesque, "
//                  "massa urna scelerisque massa, at malesuada lectus ipsum ultrices felis. "+
//                  "Duis cursus suscipit risus, vel rutrum nibh ornare quis. Curabitur nec elit "
//                      "vitae risus rhoncus cursus. Proin posuere lectus quis metus bibendum, rutrum "
//                      "accumsan velit molestie.",
//              textAlign: TextAlign.justify,
//            ),
//          ),
//          new Center(
//              child: const Text(
//                'You have pushed the button this many times:',
//                textAlign: TextAlign.justify,
//              )
//          ),
//          new Center(
//            child: new RaisedButton(
//              child: const Text('Next Page!'),
//              onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) => new FirstPage(key: new Key("KKK"))));
//              },
//            ),
//          ),
//        ],
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      ),
//      padding: new EdgeInsets.all(16.0),
//    );
  }
}