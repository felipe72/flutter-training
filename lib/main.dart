import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import './home/views/screen/home.dart';

import './payment_options/repository/rest/payment_options_rest_service.dart';
import './shared/injectable/injectable_setup.dart';
import './payment_options/model/payments_options_model.dart';

void main() {
  getIt.registerSingleton<PaymentOptionsRestService>(
      PaymentOptionsRestService());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<PaymentOptionsModel>(
              create: (_) => PaymentOptionsModel()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: HomeScreen(title: 'Sistema de faturasdasdas'),
        ));
  }
}
