import 'package:flutter/material.dart';
import 'Commons.dart';

class LastInvoice extends StatelessWidget {
  LastInvoice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: AlignLeftColumn(
        children: <Widget>[
          InvoiceTitle(),
          Container(
            padding: EdgeInsets.only(top: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[PriceAndDate(), PastDue()],
            ),
          ),
        ],
      ),
    );
  }
}

class InvoiceTitle extends StatelessWidget {
  InvoiceTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Última fatura',
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }
}

class PriceAndDate extends StatelessWidget {
  PriceAndDate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlignLeftColumn(
      children: [
        Text(
          'R\$ 3.025,49',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Text(
          'Vencimento 08/07/2019',
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
      ],
    );
  }
}

class PastDue extends StatelessWidget {
  PastDue({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Vencida',
      style: TextStyle(fontSize: 20.0, color: Colors.red),
    );
  }
}
