import 'package:flutter/material.dart';
import '../widgets/invoice_installments.dart';
import '../widgets/invoice_resume.dart';
import '../widgets/invoice_buttons.dart';

import '../../model/payments_options.dart';
import '../../model/payments_options_model.dart';
import '../../view_model/payments_options.dart';

class PaymentOptionsScreen extends StatefulWidget {
  final PaymentsOptionsViewModel paymentOptionsViewModel =
      PaymentsOptionsViewModel(paymentOptionsModel: PaymentsOptionsModel());
  PaymentOption _selectedPaymentOption;

  PaymentOption get selectedPaymentOption =>
      _selectedPaymentOption ?? this.paymentOptionsViewModel.paymentsOptions[0];
  set selectedPaymentOption(value) => _selectedPaymentOption = value;

  @override
  _PaymentOptionsScreenState createState() => _PaymentOptionsScreenState();
}

class _PaymentOptionsScreenState extends State<PaymentOptionsScreen> {
  void onChanged(PaymentOption option) {
    setState(() => widget.selectedPaymentOption = option);
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
              selectedOption: widget.selectedPaymentOption,
              options: widget.paymentOptionsViewModel.paymentsOptions,
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
