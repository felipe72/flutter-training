import 'package:flutter/material.dart';

class InvoiceResume extends StatelessWidget {
  InvoiceResume({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          children: [
            InvoicePrice(),
            SizedBox(height: 24),
            OperationType(),
          ],
        ),
      ),
    );
  }
}

class InvoicePrice extends StatelessWidget {
  InvoicePrice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Fatura de junho',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
        ),
        Text(
          'R\$ 3.025,49',
          style: TextStyle(fontSize: 16.0, color: Colors.grey),
        )
      ],
    );
  }
}

class OperationType extends StatelessWidget {
  OperationType({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Taxa de operação',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
        ),
        Text(
          'R\$ 154,51',
          style: TextStyle(fontSize: 16.0, color: Colors.grey),
        )
      ],
    );
  }
}
