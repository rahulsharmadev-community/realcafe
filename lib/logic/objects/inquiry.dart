import 'dart:convert';

class Inquiry {
  Inquiry({
    required this.userId,
    required this.inquiryId,
    required this.name,
    required this.email,
    required this.phoneNo,
    required this.shopName,
    required this.shopLocation,
    required this.pincode,
    required this.monthlyReq,
  });

  final String userId;
  final String inquiryId;
  final String name;
  final String email;
  final int phoneNo;
  final String shopName;
  final String shopLocation;
  final int pincode;
  final String monthlyReq;

  factory Inquiry.fromRawJson(String str) => Inquiry.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Inquiry.fromJson(Map<String, dynamic> json) => Inquiry(
        userId: json["userId"],
        inquiryId: json["inquiryId"],
        name: json["name"],
        email: json["email"],
        phoneNo: json["phoneNo"],
        shopName: json["shopName"],
        shopLocation: json["shopLocation"],
        pincode: json["pincode"],
        monthlyReq: json["monthlyReq"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "inquiryId": inquiryId,
        "name": name,
        "email": email,
        "phoneNo": phoneNo,
        "shopName": shopName,
        "shopLocation": shopLocation,
        "pincode": pincode,
        "monthlyReq": monthlyReq,
      };
}
