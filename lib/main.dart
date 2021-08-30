import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Sistema de faturas'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: MyCardComponent(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[Text('Lorem Ipsum')],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyCardComponent extends StatelessWidget {
  MyCardComponent({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Card(
        elevation: 2.0,
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: this.child,
        ),
      ),
    );
  }
}
