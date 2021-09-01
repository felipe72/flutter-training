import 'package:provider/provider.dart';

import '../model/payments_options_model.dart';
import '../model/payments_options.dart';

class PaymentOptionsViewModel {
  PaymentOptionsViewModel({this.paymentOptionsModel});
  final PaymentOptionsModel paymentOptionsModel;

  double get invoiceValue => paymentOptionsModel.invoiceValue;
  List<PaymentOption> get paymentsOptions =>
      paymentOptionsModel.paymentsOptions;

  PaymentOption get selectedOption => paymentOptionsModel.selectedOption;
  set selectedOption(value) => paymentOptionsModel.selectedOption = value;

  double get operationTax => paymentOptionsModel.operationTax;

  static ProxyProvider0 get provider {
    return ProxyProvider<PaymentOptionsModel, PaymentOptionsViewModel>(
      create: (context) => PaymentOptionsViewModel(
        paymentOptionsModel: context.read<PaymentOptionsModel>(),
      ),
      update: (context, paymentOptionsModel, model) => PaymentOptionsViewModel(
        paymentOptionsModel: paymentOptionsModel,
      ),
    );
  }
}
