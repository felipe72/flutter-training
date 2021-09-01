import 'package:provider/provider.dart';

import '../model/payments_options_model.dart';
import '../model/payments_options.dart';

List<PaymentOption> options = [
  new PaymentOption(number: 1, total: 3180.0),
  new PaymentOption(number: 2, total: 3260.0),
  new PaymentOption(number: 3, total: 3260.0),
  new PaymentOption(number: 4, total: 3260.0),
  new PaymentOption(number: 5, total: 3310.0),
  new PaymentOption(number: 6, total: 3310.0),
];

class PaymentOptionsViewModel {
  PaymentOptionsViewModel({this.paymentOptionsModel}) {
    if (paymentsOptions.length == 0) {
      fetchOptions();
    }
  }
  final PaymentOptionsModel paymentOptionsModel;

  double get invoiceValue => paymentOptionsModel.invoiceValue;
  List<PaymentOption> get paymentsOptions =>
      paymentOptionsModel.paymentsOptions;

  PaymentOption get selectedOption => paymentOptionsModel.selectedOption;
  set selectedOption(value) => paymentOptionsModel.selectedOption = value;

  double get operationTax => paymentOptionsModel.operationTax;

  Future<List<PaymentOption>> fetchOptions() async {
    final result = await new Future.delayed(
      const Duration(seconds: 2),
      () => options,
    );
    this.paymentOptionsModel.paymentsOptions = options;
    this.selectedOption = options[0];

    return result;
  }

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
