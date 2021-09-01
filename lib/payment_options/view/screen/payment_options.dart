import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/invoice_installments.dart';
import '../widgets/invoice_resume.dart';
import '../widgets/invoice_buttons.dart';

import '../../model/payments_options.dart';
import '../../model/payments_options_model.dart';
import '../../view_model/payments_options.dart';

import '../../../shared/views/widgets/loading_column.dart';

class PaymentOptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        PaymentOptionsModel.provider,
        PaymentOptionsViewModel.provider,
      ],
      child: PaymentOptionsWidget(),
    );
  }
}

class PaymentOptionsWidget extends StatelessWidget {
  Function onChanged(BuildContext context) {
    final vm = context.read<PaymentOptionsViewModel>();

    return (PaymentOption option) => vm.selectedOption = option;
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.select((PaymentOptionsViewModel vm) => vm);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagamento de fatura'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: LoadingColumn(
          isLoading: vm.selectedOption == null,
          children: [
            InvoiceInstallments(
              selectedOption: vm.selectedOption,
              options: vm.paymentsOptions,
              onChanged: this.onChanged,
            ),
            Divider(),
            InvoiceResume(operationTax: vm.operationTax),
            Spacer(),
            InvoiceButtons(),
          ],
        ),
      ),
    );
  }
}
