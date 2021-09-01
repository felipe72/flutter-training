import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import './payments_options.dart';

List<PaymentOption> options = [
  new PaymentOption(number: 1, total: 3180.0),
  new PaymentOption(number: 2, total: 3260.0),
  new PaymentOption(number: 3, total: 3260.0),
  new PaymentOption(number: 4, total: 3260.0),
  new PaymentOption(number: 5, total: 3310.0),
  new PaymentOption(number: 6, total: 3310.0),
];

class PaymentOptionsModel extends ChangeNotifier {
  PaymentOptionsModel()
      : this._selectedOption = options[0],
        this._paymentsOptions = options;

  double _invoiceValue;
  List<PaymentOption> _paymentsOptions;

  double get invoiceValue => _invoiceValue;
  List<PaymentOption> get paymentsOptions => _paymentsOptions;

  PaymentOption _selectedOption;
  PaymentOption get selectedOption => _selectedOption;
  set selectedOption(value) {
    _selectedOption = value;
    notifyListeners();
  }

  static ChangeNotifierProvider<PaymentOptionsModel> get provider =>
      ChangeNotifierProvider<PaymentOptionsModel>(
        create: (_) => PaymentOptionsModel(),
      );
}
