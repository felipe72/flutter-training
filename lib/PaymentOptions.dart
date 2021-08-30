import 'package:flutter/material.dart';
import 'AlignLeftColumn.dart';

class PaymentOptions extends StatelessWidget {
  PaymentOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget title = Text(
      'Formas de pagamento',
      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );

    return AlignLeftColumn(
      children: [
        title,
      ],
    );
  }
}
