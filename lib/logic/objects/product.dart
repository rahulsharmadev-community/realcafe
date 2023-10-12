import 'dart:convert';

class Product {
  Product({
    this.productId,
    required this.title,
    required this.image,
    required this.price,
    required this.unitType,
    required this.category,
    required this.shotDescription,
    required this.longDescription,
  });

  final String? productId;
  final String title;
  final String image;
  final double price;
  final String unitType;
  final String category;
  final String shotDescription;
  final String longDescription;

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["productId"] ?? null,
        title: json["title"],
        image: json["image"],
        price: json["price"],
        unitType: json["unitType"],
        category: json["category"],
        shotDescription: json["shotDescription"],
        longDescription: json["longDescription"],
      );

  Map<String, dynamic> toJson() => {
        if (productId != null) "productId": productId,
        "title": title,
        "image": image,
        "price": price,
        "unitType": unitType,
        "category": category,
        "shotDescription": shotDescription,
        "longDescription": longDescription,
      };
  Product copyWith(
          {String? productId,
          String? title,
          String? image,
          double? price,
          String? unitType,
          String? category,
          String? shotDescription,
          String? longDescription}) =>
      Product(
        productId: productId ?? productId,
        title: title ?? this.title,
        image: image ?? this.image,
        price: price ?? this.price,
        unitType: unitType ?? this.unitType,
        category: category ?? this.category,
        shotDescription: shotDescription ?? this.shotDescription,
        longDescription: longDescription ?? this.longDescription,
      );

  factory Product.empty() => Product(
        title: '',
        image: '',
        price: 0,
        unitType: '',
        category: '',
        shotDescription: '',
        longDescription: '',
      );
}
