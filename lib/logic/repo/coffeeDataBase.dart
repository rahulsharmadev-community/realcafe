// ignore_for_file: file_names
import 'dart:convert';
import '../objects/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductCollection {
  final Product coffee;
  bool favourite;
  String milk;
  ProductCollection(this.coffee,
      {this.favourite = false, this.milk = 'Ort Milk'});
  void switchFavourite() {
    favourite = !favourite;
  }

  void switchMilk(String milkType) {
    milk = milkType;
  }
}

class ProductDataBase extends ChangeNotifier {
  late Map<String, dynamic> _decodedJson;
  List<ProductCollection> menuItems = [];
  List<ProductCollection> fixedmenuItems = [];
  List<ProductCollection> searchItems = [];
  List<Product> cardItems = [];
  List<String> available_Categorys = [];
  List<String> available_Milks = [];
  List<ProductCollection> get favouriteItems {
    List<ProductCollection> retValue = [];
    menuItems.forEach((ProductCollection e) {
      if (e.favourite) retValue.add(e);
    });
    return retValue;
  }

  ProductDataBase() {
    _readJson();
  }
  Future<void> _readJson() async {
    String jsonData = await rootBundle.loadString('assets/json/coffee.json');
    _decodedJson = json.decode(jsonData) as Map<String, dynamic>;

//Set Available_Categorys data
    available_Categorys = List<String>.from(
        _decodedJson['Available_Categorys'].map((e) => e as String)).toList();

//Set Available_Milks data
    available_Milks = List<String>.from(
        _decodedJson['Available_Milks'].map((e) => e as String)).toList();

//Set MenuItems
    menuItems = fixedmenuItems = List<ProductCollection>.from(
        _decodedJson['Product_Collection']
            .map((e) => ProductCollection(Product.fromJson(e)))).toList();

    notifyListeners();
  }

  addToCard(Product coffee) {
    cardItems.add(coffee);
    notifyListeners();
  }

  removeformCard(int index) {
    cardItems.removeAt(index);
    notifyListeners();
  }

  searchFilter(String value, context) {
    searchItems = [];
    menuItems.forEach((element) {
      if (element.coffee.title.toLowerCase().contains(value.toLowerCase())) {
        searchItems.add(element);
      }
    });

    if (searchItems.isEmpty) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.fromLTRB(32, 0, 16, 32),
          content: Text('Product Not Fount!')));
    }
    notifyListeners();
  }

  void get resetmenuItems {
    menuItems = fixedmenuItems;
    notifyListeners();
  }

  setMenuItems(String category) {
    menuItems = [];
    searchItems = [];
    fixedmenuItems.forEach((element) {
      if (element.coffee.category.contains(category)) menuItems.add(element);
    });
    notifyListeners();
  }
}
