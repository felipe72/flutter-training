import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../model/payments_options.dart';

class InvoiceInstallments extends StatelessWidget {
  InvoiceInstallments(
      {Key key, this.selectedOption, this.options, this.onChanged})
      : super(key: key);
  final List<PaymentOption> options;
  final PaymentOption selectedOption;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    List<InstallmentCard> cards = options
        .map(
          (option) => InstallmentCard(
            selectedOption: this.selectedOption,
            currentOption: option,
            onChanged: onChanged,
          ),
        )
        .toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Escolha o número de parcelas',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        ...cards,
      ],
    );
  }
}

class InstallmentCard extends StatelessWidget {
  InstallmentCard(
      {Key key, this.selectedOption, this.currentOption, this.onChanged})
      : super(key: key);

  final formatCurrency = new NumberFormat("#,##0.00", "pt_BR");

  final PaymentOption selectedOption;
  final PaymentOption currentOption;
  final Function onChanged;

  int get index => currentOption.number;
  double get price => currentOption.value;
  double get total => currentOption.total;

  @override
  Widget build(BuildContext context) {
    String total = 'R\$ ' + formatCurrency.format(this.total);
    String installmentPrice =
        index.toString() + ' x ' + 'R\$ ' + formatCurrency.format(this.price);

    return Card(
      elevation: 2,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Radio(
                value: this.currentOption,
                groupValue: this.selectedOption,
                onChanged: this.onChanged),
            Expanded(
              child: Text(installmentPrice, style: TextStyle(fontSize: 16.0)),
            ),
            Text(total, style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
