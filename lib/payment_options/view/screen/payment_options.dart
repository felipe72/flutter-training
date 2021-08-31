import 'package:flutter/material.dart';
import '../widgets/invoice_installments.dart';
import '../widgets/invoice_resume.dart';
import '../widgets/invoice_buttons.dart';

class PaymentOptionsScreen extends StatefulWidget {
  @override
  _PaymentOptionsScreenState createState() => _PaymentOptionsScreenState();
}

class _PaymentOptionsScreenState extends State<PaymentOptionsScreen> {
  int _selectedOption = 1;

  void onChanged(int option) {
    setState(() => _selectedOption = option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamento de fatura'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            InvoiceInstallments(
              selectedOption: this._selectedOption,
              onChanged: this.onChanged,
            ),
            Divider(),
            InvoiceResume(),
            Spacer(),
            InvoiceButtons(),
          ],
        ),
      ),
    );
  }
}
