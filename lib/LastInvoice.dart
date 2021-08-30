import 'package:flutter/material.dart';
import 'AlignLeftColumn.dart';

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
