import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InvoiceInstallments extends StatelessWidget {
  InvoiceInstallments({Key key, this.selectedOption, this.onChanged})
      : super(key: key);
  final int selectedOption;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    List<int> prices = [3180, 3260, 3260, 3260, 3310, 3310];
    List<InstallmentCard> cards = prices.asMap().entries.map((entry) {
      int index = entry.key + 1;
      int price = entry.value;

      return InstallmentCard(
        selectedOption: this.selectedOption,
        price: price,
        index: index,
        onChanged: this.onChanged,
      );
    }).toList();

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
      {Key key, this.selectedOption, this.price, this.index, this.onChanged})
      : super(key: key);

  final formatCurrency = new NumberFormat("#,##0.00", "pt_BR");

  final int selectedOption;
  final int price;
  final int index;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    String total = 'R\$ ' + formatCurrency.format(this.price);
    String installmentPrice = index.toString() +
        ' x ' +
        'R\$ ' +
        formatCurrency.format(this.price / this.index);

    return Card(
      elevation: 2,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Radio(
                value: this.index,
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
