// import 'package:flutter/cupertino.dart';

// import '../objects/address.dart';

// class UserProfile extends ChangeNotifier {
//   bool isProfileInit = false;
//   late String _firstName;
//   late String _lastName;
//   late int _phoneNumber;
//   late String _emailId;
//   late List<Address> _addresses = [];

//   UserProfile() {
//     addAddress(Address(
//         name: 'Kayozz',
//         houseAddress: 'A-227/3, Nagali Puna Road, Siras Pur Road, Khera Kalan',
//         addressType: AddressType.Work,
//         state: 'New Delhi',
//         pincode: 110082,
//         phoneNo: 8564710052));
//     addAddress(Address(
//         name: 'Suraj Kumar',
//         houseAddress: 'B-22/3, Samaya pur Badli Ind. area',
//         addressType: AddressType.Home,
//         state: 'New Delhi',
//         pincode: 110042,
//         phoneNo: 9994710052));
//   }

//   String get firstName => _firstName;
//   String get lastName => _lastName;
//   int get phoneNumber => _phoneNumber;
//   String get emailId => _emailId;
//   List<Address> get addresses => [..._addresses];

//   initfromJson(Map<String, dynamic> json) {
//     isProfileInit = json["isProfileInit"];
//     _firstName = json["_firstName"];
//     _lastName = json["_lastName"];
//     _phoneNumber = json["_phoneNumber"];
//     _emailId = json["_emailId"];
//     _addresses = List<Address>.from(
//         json["_addresses"].map((e) => Address.fromRawJson(e))).toList();
//     notifyListeners();
//   }

//   Map<String, dynamic> toJson() => {
//         "isProfileInit": isProfileInit,
//         "_firstName": _firstName,
//         "_lastName": _lastName,
//         "_phoneNumber": _phoneNumber,
//         "_emailId": _emailId,
//         "_addresses":
//             List<String>.from(_addresses.map((e) => e.toRawJson())).toList(),
//       };

// // Profile initialization
//   void init(
//       {required firstName,
//       required lastName,
//       required phoneNumber,
//       required emailId}) {
//     _firstName = firstName;
//     _lastName = lastName;
//     _emailId = emailId;
//     _phoneNumber = phoneNumber;
//     isProfileInit = true;
//     notifyListeners();
//   }

// // Addresses methods
//   void addAddress(Address address) {
//     _addresses.add(address);
//     notifyListeners();
//   }

//   void removeAddress(index) {
//     _addresses.removeAt(index);
//     notifyListeners();
//   }
// }
