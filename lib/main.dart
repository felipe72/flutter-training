import 'package:flutter/material.dart';
import './home/views/screen/home.dart';

import './payment_options/repository/rest/payment_options_rest_service.dart';
import './shared/injectable/injectable_setup.dart';

void main() {
  getIt.registerSingleton<PaymentOptionsRestService>(
      PaymentOptionsRestService());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Sistema de faturasdasdas'),
    );
  }
}
