import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_02/presentation/custom_icons_icons.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/bkg.jpg'),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 100, 32, 100),
          child: Container(
            width: size.width,
            color: Color(0xA6FFFFFF),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Icon(
                    CustomIcons.restaurant_menu,
                    size: 80,
                  ),
                ),
                Text('Good Food',
                    style: TextStyle(
                        decorationStyle: TextDecorationStyle.solid,
                        textBaseline: TextBaseline.ideographic,
                        fontSize: 20,
                        color: Colors.red,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      'Nuttritionally balanced,\n easy to cook recipes.\n Quality fresh local ingredient',
                      style: TextStyle(
                          decorationStyle: TextDecorationStyle.solid,
                          textBaseline: TextBaseline.ideographic,
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w100,
                          decoration: TextDecoration.none),
                      maxLines: 4,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 200,
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      color: Colors.white,
                      child: Text('Create Account'),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: RichText(
                      textWidthBasis: TextWidthBasis.longestLine,
                      text: TextSpan(
                        // style: DefaultTextStyle.of(context).style,

                        children: [
                        TextSpan(
                            text: 'Already have account?',
                            style: TextStyle(
                              decorationStyle: TextDecorationStyle.solid,
                              textBaseline: TextBaseline.ideographic,
                              fontSize: 12,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none,
                            )),
                        TextSpan(
                            style: TextStyle(
                                decorationStyle: TextDecorationStyle.solid,
                                textBaseline: TextBaseline.ideographic,
                                fontSize: 12,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                            text: ' Log in',
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ]),
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
