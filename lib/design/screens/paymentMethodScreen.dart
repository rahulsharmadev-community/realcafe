// // ignore_for_file: file_names
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:realcafe/objects/address.dart';
// import 'package:realcafe/objects/coffeeDataBase.dart';
// import 'package:realcafe/objects/userProfile.dart';

// class PaymentMethod extends StatefulWidget {
//   const PaymentMethod({Key? key}) : super(key: key);

//   @override
//   _PaymentMethodState createState() => _PaymentMethodState();
// }

// class _PaymentMethodState extends State<PaymentMethod> {
//   late int currentMethodValue = -1;
//   List<Map<String, dynamic>> methods = [
//     {'name': 'Google Pay', 'icon': 'assets/icons/google.png'},
//     {'name': 'Paypal', 'icon': 'assets/icons/paypal.png'},
//     {'name': 'Mastercard', 'icon': 'assets/icons/mastercard.png'},
//     {'name': 'Apple Pay', 'icon': 'assets/icons/apple.png'},
//     {'name': 'Cash on delivery', 'icon': 'assets/icons/cash-on-delivery.png'},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     var primaryTextTheme = Theme.of(context).primaryTextTheme;
//     List<Address> addresses = Provider.of<UserProfile>(context).addresses;
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             color: Theme.of(context).primaryColor,
//             onPressed: () => Navigator.pop(context),
//             icon: const Icon(Icons.arrow_back_ios_rounded)),
//         title: const Text('Payment Method'),
//       ),
//       bottomNavigationBar: PreferredSize(
//         preferredSize: const Size.fromHeight(kToolbarHeight),
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
//           child: Row(
//             children: [
//               SizedBox.square(
//                 dimension: kToolbarHeight,
//                 child: FlatButton(
//                     padding: EdgeInsets.zero,
//                     color: const Color(0xff362C36),
//                     onPressed: () => Navigator.pop(context),
//                     child: const Icon(Icons.arrow_back_ios_rounded)),
//               ),
//               const SizedBox(width: 16),
//               Expanded(
//                   child: FlatButton(
//                       minWidth: double.maxFinite,
//                       height: kToolbarHeight,
//                       color: Theme.of(context).primaryColor,
//                       onPressed: () => Navigator.pop(context),
//                       child: const Text(
//                         'Confirm',
//                         style: TextStyle(
//                             fontSize: 20,
//                             fontFamily: 'Raleway',
//                             fontWeight: FontWeight.bold),
//                       )))
//             ],
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Payment',
//                 style: primaryTextTheme.headline6!
//                     .copyWith(color: Theme.of(context).primaryColor)),
//             Column(
//                 children: List<Widget>.generate(
//                     methods.length,
//                     (index) => Card(
//                           margin: EdgeInsets.symmetric(vertical: 8),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8)),
//                           child: ListTile(
//                             contentPadding: EdgeInsets.all(8),
//                             leading: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Image.asset(
//                                 methods[index]['icon'],
//                                 width: 26,
//                                 height: 26,
//                               ),
//                             ),
//                             title: Text(methods[index]['name'],
//                                 style: primaryTextTheme.headline6!
//                                     .copyWith(fontFamily: 'Raleway')),
//                             trailing: Radio<int>(
//                                 value: index,
//                                 groupValue: currentMethodValue,
//                                 onChanged: (value) => setState(() {
//                                       currentMethodValue = value!;
//                                     })),
//                           ),
//                         ))),
//             Text('Address',
//                 style: primaryTextTheme.headline6!
//                     .copyWith(color: Theme.of(context).primaryColor)),
//             Expanded(
//               child: ListView.builder(
//                   itemCount: addresses.length,
//                   itemBuilder: (builder, index) => Card(
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8)),
//                         child: ListTile(
//                           title: Text(addresses[index].name,
//                               style: primaryTextTheme.bodyText2!
//                                   .copyWith(fontWeight: FontWeight.bold)),
//                           subtitle: Text(
//                             addresses[index].houseAddress,
//                             style: primaryTextTheme.caption,
//                           ),
//                           leading: Container(
//                             height: 50,
//                             width: 50,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: const Color(0xff463D46)),
//                             child: Icon(
//                                 addresses[index].addressType != AddressType.Home
//                                     ? Icons.business_outlined
//                                     : Icons.home_rounded),
//                           ),
//                           iconColor: Colors.grey,
//                         ),
//                       )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
