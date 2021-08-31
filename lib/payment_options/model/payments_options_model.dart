import './payments_options.dart';

class PaymentsOptionsModel {
  double _invoiceValue;
  List<PaymentOption> _paymentsOptions = [
    new PaymentOption(number: 1, total: 3180.0),
    new PaymentOption(number: 2, total: 3260.0),
    new PaymentOption(number: 3, total: 3260.0),
    new PaymentOption(number: 4, total: 3260.0),
    new PaymentOption(number: 5, total: 3310.0),
    new PaymentOption(number: 6, total: 3310.0),
  ];

  double get invoiceValue => _invoiceValue;
  List<PaymentOption> get paymentsOptions => _paymentsOptions;
}
