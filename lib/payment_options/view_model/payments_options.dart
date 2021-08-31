import '../model/payments_options_model.dart';
import '../model/payments_options.dart';

class PaymentsOptionsViewModel {
  final PaymentsOptionsModel _paymentsOptionsModel;

  PaymentsOptionsViewModel({PaymentsOptionsModel paymentOptionsModel})
      : _paymentsOptionsModel = paymentOptionsModel;

  double get invoiceValue => _paymentsOptionsModel.invoiceValue;
  List<PaymentOption> get paymentsOptions =>
      _paymentsOptionsModel.paymentsOptions;
}
