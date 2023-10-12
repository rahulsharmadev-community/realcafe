import 'dart:convert';

import 'package:equatable/equatable.dart';

class Order {
  Order({
    required this.orderId,
    required this.productId,
    required this.title,
    required this.image,
    required this.dateTime,
    required this.quantity,
    required this.totalPrice,
  });

  final String orderId;
  final String productId;
  final String title;
  final String image;
  final String dateTime;
  final int quantity;
  final double totalPrice;

  factory Order.fromRawJson(String str) => Order.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        orderId: json["orderId"],
        productId: json["productId"],
        title: json["title"],
        image: json["image"],
        dateTime: json["dateTime"],
        quantity: json["quantity"],
        totalPrice: json["totalPrice"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "orderId": orderId,
        "productId": productId,
        "title": title,
        "image": image,
        "dateTime": dateTime,
        "quantity": quantity,
        "totalPrice": totalPrice,
      };

  Order copyWith({
    String? orderId,
    String? productId,
    String? title,
    String? image,
    String? dateTime,
    int? quantity,
    double? totalPrice,
  }) =>
      Order(
        orderId: orderId ?? this.orderId,
        productId: productId ?? this.productId,
        title: title ?? this.title,
        image: image ?? this.image,
        dateTime: dateTime ?? this.dateTime,
        quantity: quantity ?? this.quantity,
        totalPrice: totalPrice ?? this.totalPrice,
      );
}
