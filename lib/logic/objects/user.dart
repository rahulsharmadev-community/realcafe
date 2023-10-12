import 'dart:convert';
import 'package:realcafe/logic/objects/inquiry.dart';
import 'address.dart';
import 'order.dart';

class User {
  User({
    required this.userId,
    required this.authId,
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.cart,
    required this.wishlist,
    required this.inquirys,
    required this.finishOrders,
    required this.pendingOrders,
    required this.cancelOrders,
    required this.addresses,
  });

  final String userId;
  final String authId;
  final String name;
  final String email;
  final int phoneNo;
  final List<String> cart;
  final List<String> wishlist;
  final List<Inquiry> inquirys;
  final List<Order> finishOrders;
  final List<Order> pendingOrders;
  final List<Order> cancelOrders;
  final List<Address> addresses;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["userId"],
        authId: json["authId"],
        name: json["name"],
        email: json["email"],
        phoneNo: json["phoneNo"],
        cart: json["cart"],
        wishlist: json["wishlist"],
        inquirys: List<Inquiry>.from(
            json["inquirys"].map((x) => Inquiry.fromJson(x))),
        finishOrders: List<Order>.from(
            json["finishOrders"].map((x) => Order.fromJson(x))),
        pendingOrders: List<Order>.from(
            json["pendingOrders"].map((x) => Order.fromJson(x))),
        cancelOrders: List<Order>.from(
            json["cancelOrders"].map((x) => Order.fromJson(x))),
        addresses: List<Address>.from(
            json["addresses"].map((x) => Address.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "authId": authId,
        "name": name,
        "email": email,
        "phoneNo": phoneNo,
        "cart": cart,
        "wishlist": wishlist,
        "inquirys": List<dynamic>.from(inquirys.map((x) => x.toJson())),
        "finishOrders": List<dynamic>.from(finishOrders.map((x) => x.toJson())),
        "pendingOrders":
            List<dynamic>.from(pendingOrders.map((x) => x.toJson())),
        "cancelOrders": List<dynamic>.from(cancelOrders.map((x) => x.toJson())),
        "addresses": List<dynamic>.from(addresses.map((x) => x.toJson())),
      };

  User copyWith({
    String? userId,
    String? authId,
    String? name,
    String? email,
    int? phoneNo,
    List<String>? cart,
    List<String>? wishlist,
    List<Inquiry>? inquirys,
    List<Order>? finishOrders,
    List<Order>? pendingOrders,
    List<Order>? cancelOrders,
    List<Address>? addresses,
  }) =>
      User(
        userId: userId ?? this.userId,
        authId: authId ?? this.authId,
        name: name ?? this.name,
        email: email ?? this.email,
        phoneNo: phoneNo ?? this.phoneNo,
        cart: cart ?? this.cart,
        wishlist: wishlist ?? this.wishlist,
        inquirys: inquirys ?? this.inquirys,
        finishOrders: finishOrders ?? this.finishOrders,
        pendingOrders: pendingOrders ?? this.pendingOrders,
        cancelOrders: cancelOrders ?? this.cancelOrders,
        addresses: addresses ?? this.addresses,
      );
}
