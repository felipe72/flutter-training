import 'package:provider/provider.dart';

import '../model/payments_options_model.dart';
import '../model/payments_options.dart';

class PaymentOptionsViewModel {
  PaymentOptionsViewModel({this.paymentOptionsModel});
  final PaymentOptionsModel paymentOptionsModel;

  double get invoiceValue => paymentOptionsModel.invoiceValue;
  Future<List<PaymentOption>> getPaymentOptions() {
    return paymentOptionsModel.getPaymentOptions();
  }

  PaymentOption get selectedOption => paymentOptionsModel.selectedOption;
  set selectedOption(value) => paymentOptionsModel.selectedOption = value;

  double get operationTax => paymentOptionsModel.selectedOption == null
      ? 0
      : paymentOptionsModel.operationTax;

  static Function get provider {
    return ({child}) =>
        ProxyProvider<PaymentOptionsModel, PaymentOptionsViewModel>(
          create: (context) => PaymentOptionsViewModel(
            paymentOptionsModel: context.read<PaymentOptionsModel>(),
          ),
          update: (context, paymentOptionsModel, model) =>
              PaymentOptionsViewModel(
            paymentOptionsModel: paymentOptionsModel,
          ),
          child: child,
        );
  }
}
