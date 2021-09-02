import 'dart:convert';
import '../../model/payments_options.dart';
import 'package:http/http.dart' as http;

class PaymentOptionsRestService {
  Future<List<PaymentOption>> fetchPaymentOptions() async {
    final response = await http.get(
      Uri.parse('https://dreamy-allen-2e1b47.netlify.app/payment-options.json'),
    );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final Iterable l = json.decode(response.body)['options']['installments'];
      return List<PaymentOption>.from(
          l.map((model) => PaymentOption.fromJson(model)));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }
}
