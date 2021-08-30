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
              LastInvoice(),
              Divider(
                color: Colors.black,
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
          padding: EdgeInsets.all(16),
          child: this.child,
        ),
      ),
    );
  }
}

class LastInvoice extends StatelessWidget {
  LastInvoice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget title = Text(
      'Última fatura',
      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );

    final Widget priceAndDate = AlignLeftColumn(
      children: [
        Text(
          'R\$ 3.025,49',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        Text(
          'Vencimento 08/07/2019',
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );

    final Widget pastDue = Text(
      'Vencida',
      style: TextStyle(fontSize: 20.0, color: Colors.red),
    );

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: AlignLeftColumn(
        children: <Widget>[
          title,
          Container(
            padding: EdgeInsets.only(top: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[priceAndDate, pastDue],
            ),
          ),
        ],
      ),
    );
  }
}

class AlignLeftColumn extends StatelessWidget {
  AlignLeftColumn({Key key, this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: this.children,
    );
  }
}
