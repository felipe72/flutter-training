import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import './payments_options.dart';

class PaymentOptionsModel extends ChangeNotifier {
  double invoiceValue = 3025.49;
  List<PaymentOption> paymentsOptions = [];

  double get operationTax =>
      selectedOption != null ? selectedOption.total - invoiceValue : 0;

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
