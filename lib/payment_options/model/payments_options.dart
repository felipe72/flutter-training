import 'package:flutter/material.dart';

class PaymentOption {
  PaymentOption({this.number, this.total, this.installmentValue, this.tax});

  int number;
  double installmentValue;
  double total;
  double tax;

  PaymentOption.fromJson(Map<String, dynamic> json)
      : number = json['number'],
        installmentValue = json['value'].toDouble(),
        tax = json['convinience'],
        total = json['total'].toDouble();

  bool operator ==(o) =>
      o is PaymentOption &&
      number == o.number &&
      installmentValue == o.installmentValue &&
      tax == o.tax &&
      total == o.total;

  int get hashCode => hashValues(number, installmentValue, tax, total);
}
