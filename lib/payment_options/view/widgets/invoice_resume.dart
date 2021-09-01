import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InvoiceResume extends StatelessWidget {
  InvoiceResume({Key key, this.operationTax}) : super(key: key);
  final double operationTax;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          children: [
            InvoicePrice(),
            SizedBox(height: 24),
            OperationTax(operationTax: operationTax),
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

class OperationTax extends StatelessWidget {
  OperationTax({Key key, this.operationTax}) : super(key: key);
  final double operationTax;

  final formatCurrency = new NumberFormat("#,##0.00", "pt_BR");

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
          'R\$ ' + formatCurrency.format(operationTax),
          style: TextStyle(fontSize: 16.0, color: Colors.grey),
        )
      ],
    );
  }
}
