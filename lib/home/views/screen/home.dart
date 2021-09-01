import 'package:flutter/material.dart';
import '../widgets/last_invoice.dart';
import '../widgets/choose_payment.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Card(
            elevation: 2.0,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  LastInvoice(),
                  Divider(color: Colors.black),
                  ChoosePayment(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
