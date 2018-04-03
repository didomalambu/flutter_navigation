import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new PageOne(),
    title: "Navigation",
    routes: <String,WidgetBuilder>{
      '/PageTwo':(BuildContext context)=> new PageTwo(),
    }
  ));
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("PAGE ONE"),
      ),
      body: new Container
        (
          child: new Center
            (
              child: new RaisedButton
                (
                  child: new Text("TO PAGE TWO"),
                  onPressed: () {
                  Navigator.pushNamed(context, '/PageTwo');
                },),

          ),
      )

    ); // scaffold
  }
}

//page two
class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("PAGE TWO"),
        ),
        body: new Container
          (
          child: new Center
            (
            child: new RaisedButton
              (
              child: new Text("THIS IS PAGE TWO !!"),
              onPressed: () {

              },),

          ),
        )
    ); // scaffold
  }
}