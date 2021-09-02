import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './payments_options.dart';
import '../repository/rest/payment_options_rest_service.dart';
import '../../shared/injectable/injectable_setup.dart';

class PaymentOptionsModel extends ChangeNotifier {
  double get invoiceValue => selectedOption.total - selectedOption.tax;
  double get operationTax => selectedOption.tax;

  List<PaymentOption> _paymentsOptions;
  Future<List<PaymentOption>> getPaymentOptions() async {
    if (_paymentsOptions == null) {
      _paymentsOptions =
          await getIt<PaymentOptionsRestService>().fetchPaymentOptions();
      selectedOption = _paymentsOptions[0];
    }

    return _paymentsOptions;
  }

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
