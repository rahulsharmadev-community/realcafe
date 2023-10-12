import 'dart:convert';

class Address {
  Address({
    required this.addressId,
    required this.title,
    required this.phoneNo,
    required this.address,
    required this.deliveryTime,
    required this.pincode,
    required this.state,
  });

  final String addressId;
  final String title;
  final int phoneNo;
  final String address;
  final String deliveryTime;
  final int pincode;
  final String state;

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        addressId: json["addressId"],
        title: json["title"],
        phoneNo: json["phoneNo"],
        address: json["address"],
        deliveryTime: json["deliveryTime"],
        pincode: json["pincode"],
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "addressId": addressId,
        "title": title,
        "phoneNo": phoneNo,
        "address": address,
        "deliveryTime": deliveryTime,
        "pincode": pincode,
        "state": state,
      };

  Address copyWith({
    String? addressId,
    String? title,
    int? phoneNo,
    String? address,
    String? deliveryTime,
    int? pincode,
    String? state,
  }) =>
      Address(
        addressId: addressId ?? this.addressId,
        title: title ?? this.title,
        phoneNo: phoneNo ?? this.phoneNo,
        address: address ?? this.address,
        deliveryTime: deliveryTime ?? this.deliveryTime,
        pincode: pincode ?? this.pincode,
        state: state ?? this.state,
      );
}
